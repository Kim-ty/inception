package kr.co.inception.main.service.impl;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.co.inception.main.dao.MainDao;
import kr.co.inception.main.service.MainService;
import kr.co.inception.main.vo.CategoryListVO;

@Service
public class MainServiceImpl implements MainService{
	
	@Autowired
	private MainDao mainDao;

	@Override
	public List<CategoryListVO> CategoryListView() {
		return mainDao.CategoryListView();
	}

	@Override
	public String searchImageUpload(MultipartHttpServletRequest mRequest){
		String saveFileName = "";
		String uploadPath = "C:/Users/KIBEOM/Documents/inception/inception/src/main/webapp/resources/image/";
		File dir = new File(uploadPath);
		if (!dir.isDirectory()) {
			dir.mkdirs();
		}
		Iterator<String> iter = mRequest.getFileNames();
		while(iter.hasNext()) {
			String uploadFileName = iter.next();
			MultipartFile mFile = mRequest.getFile(uploadFileName);
			String originalFileName = mFile.getOriginalFilename();
			saveFileName = originalFileName;
			
			if(saveFileName != null && !saveFileName.equals("")) {
				if(new File(uploadPath + saveFileName).exists()) {
					saveFileName = System.currentTimeMillis()+"_"+saveFileName;
				}
				try {
					mFile.transferTo(new File(uploadPath + saveFileName));
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			} 
		} 
		return saveFileName;
	} 
}

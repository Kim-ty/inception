package kr.co.inception.main.controller;

import java.awt.image.BufferedImage;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;
import java.util.Random;

import javax.imageio.ImageIO;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import kr.co.inception.board.service.BoardService;
import kr.co.inception.board.vo.BoardListVO;
import kr.co.inception.board.vo.TagListVO;
import kr.co.inception.main.service.MainService;
import kr.co.inception.main.service.inception_label_image;
import kr.co.inception.main.vo.CategoryListVO;
import kr.co.inception.main.vo.SearchResultVO;

@Controller
@RequestMapping("/")
public class MainController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	// 각 리턴값(뷰 이동)과 urlmapping은 수정해야함

	@Autowired
	private MainService mainService;

	@Autowired
	private BoardService boardService;

	private inception_label_image ILI;
	private ManipulateImage manipulateImage;

	// 메인페이지 이동
	@RequestMapping("/")
	public String main(Model model) throws Exception {
		List<CategoryListVO> categoryListVO = mainService.CategoryListView();
		model.addAttribute("categoryList", categoryListVO);
		model.addAttribute("categoryListSize", categoryListVO.size());
		List<TagListVO> tagListVO = boardService.tagList();
		model.addAttribute("tagList", tagListVO);
		return "Main";
	}

	@RequestMapping(value = "/andfashionlist")
	@ResponseBody
	public List<BoardListVO> FashionListJson(Model model) {
		List<BoardListVO> boardListVO = mainService.FashionList();

		return boardListVO;
	}

	@RequestMapping(value = "/andcarlist")
	@ResponseBody
	public List<BoardListVO> CarListJson(Model model) {
		List<BoardListVO> boardListVO = mainService.CarList();

		return boardListVO;
	}

	// 안드용 json
	@RequestMapping(value = "/andcategorylist")
	@ResponseBody
	public List<CategoryListVO> categoryListJson(Model model) {
		List<CategoryListVO> categoryListVO = mainService.CategoryListView();

		return categoryListVO;
	}

	@RequestMapping(value = "inception", method = RequestMethod.POST)
	public ModelAndView fileUpload(MultipartHttpServletRequest mRequest, Model model) throws Exception {
		ModelAndView view = new ModelAndView();
		StringBuffer temp = new StringBuffer();
		view.setViewName("SearchResult");
		System.out.println("업로드 시작");
		String searchimage = mainService.searchImageUpload(mRequest);
		BufferedImage image = null;
		String imagePath = "";
		try {
			supportImageType();
			imagePath = "C:/uploadimage/" + searchimage;
			File imagefile = new File(imagePath);
			System.out.println(imagefile.getName() + ", " + imagefile.isFile());
			image = ImageIO.read(imagefile);
			if (image == null) {
				System.out.println(imagePath + " 파일을 찾을 수 없음");
			} else {
				Random rnd = new Random();
				for (int i = 0; i < 20; i++) {
					int rIndex = rnd.nextInt(3);
					switch (rIndex) {
					case 0:
						// a-z
						temp.append((char) ((int) (rnd.nextInt(26)) + 97));
						break;
					case 1:
						// A-Z
						temp.append((char) ((int) (rnd.nextInt(26)) + 65));
						break;
					case 2:
						// 0-9
						temp.append((rnd.nextInt(10)));
						break;
					}
				}
				temp.append(".jpg");
				ImageIO.write(image, "jpg", new File("C:/uploadimage/" + temp));

			}
		} catch (IOException e) {
			e.printStackTrace();
		}

		String s;
		String[] result = new String[5];
		int i = 0;
		try {
			Process oProcess = new ProcessBuilder("cmd", "/C",
					"activate tensorflow & python C:/inception_image/label_image.py --image C:/uploadimage/" + temp)
							.start();
			BufferedReader stdOut = new BufferedReader(new InputStreamReader(oProcess.getInputStream()));
			while ((s = stdOut.readLine()) != null) {
				result[i] = s;
				int index = result[i].indexOf("(");
				if (result[i].substring(0, index - 1).equals("bag")) {
					result[i] = "가방";
				} else if (result[i].substring(0, index - 1).equals("bikini")) {
					result[i] = "비키니";
				} else if (result[i].substring(0, index - 1).equals("cap")) {
					result[i] = "모자";
				} else if (result[i].substring(0, index - 1).equals("coat")) {
					result[i] = "코트";
				} else if (result[i].substring(0, index - 1).equals("cotton pants")) {
					result[i] = "면바지";
				} else if (result[i].substring(0, index - 1).equals("hood")) {
					result[i] = "후드";
				} else if (result[i].substring(0, index - 1).equals("jacket")) {
					result[i] = "자켓";
				} else if (result[i].substring(0, index - 1).equals("jean")) {
					result[i] = "청바지";
				} else if (result[i].substring(0, index - 1).equals("long shirt")) {
					result[i] = "긴팔티";
				} else if (result[i].substring(0, index - 1).equals("one piece")) {
					result[i] = "원피스";
				} else if (result[i].substring(0, index - 1).equals("rash guard")) {
					result[i] = "래시가드";
				} else if (result[i].substring(0, index - 1).equals("running shoes")) {
					result[i] = "운동화";
				} else if (result[i].substring(0, index - 1).equals("sandle")) {
					result[i] = "샌들";
				} else if (result[i].substring(0, index - 1).equals("shirt")) {
					result[i] = "셔츠";
				} else if (result[i].substring(0, index - 1).equals("shoes")) {
					result[i] = "구두";
				} else if (result[i].substring(0, index - 1).equals("short pants")) {
					result[i] = "반바지";
				} else if (result[i].substring(0, index - 1).equals("short shirt")) {
					result[i] = "반팔티";
				} else if (result[i].substring(0, index - 1).equals("skirt")) {
					result[i] = "치마";
				} else if (result[i].substring(0, index - 1).equals("sleeveless shirt")) {
					result[i] = "민소매";
				} else if (result[i].substring(0, index - 1).equals("sunglasses")) {
					result[i] = "선글라스";
				} else if (result[i].substring(0, index - 1).equals("tie")) {
					result[i] = "넥타이";
				}
				i += 1;
			}

			view.addObject("Rank1", result[0]);
			view.addObject("Rank2", result[1]);
			view.addObject("Rank3", result[2]);
			view.addObject("Rank4", result[3]);
			view.addObject("Rank5", result[4]);
			view.addObject("img_src", searchimage);
			System.out.println(result[0]);
			System.out.println(result[1]);
			System.out.println(result[2]);
			System.out.println(result[3]);
			System.out.println(result[4]);
		} catch (IOException e) {
			System.err.println("����! �ܺ� ��� ���࿡ �����߽��ϴ�.\n" + e.getMessage());
			System.exit(-1);
		}

		return view;

	}

	public static void supportImageType() {

		/**
		 * 읽을 수 있는 이미지 포멧들 BMP bmp jpeg wbmp gif JPG png jpg WBMP JPEG
		 */
		String readName[] = ImageIO.getReaderFormatNames();
		for (int i = 0; i < readName.length; i++) {
		}

		/**
		 * 저장할 수 있는 이미지 포맷들 BMP bmp jpeg wbmp png JPG PNG jpg WBMP JPEG
		 */
		String writerName[] = ImageIO.getWriterFormatNames();
		for (int i = 0; i < writerName.length; i++) {
		}
	}

	@RequestMapping("image_upload")
	public static String convertStringtoImage(String encodedImageStr, String fileName) {

		return "image_upload";

	}

	@RequestMapping(value = "/andinception")
	@ResponseBody
	public SearchResultVO androidinception(@RequestParam("filename") String filename) throws InterruptedException {
		StringBuffer temp = new StringBuffer();
		System.out.println("작업하러들어옴");
		String s;
		BufferedImage image = null;
		String imagePath = "";
		try {
			supportImageType();
			imagePath = "C:/uploadimage/" + filename;
			File imagefile = new File(imagePath);
			System.out.println(imagefile.getName() + ", " + imagefile.isFile());
			image = ImageIO.read(imagefile);
			if (image == null) {
				System.out.println(imagePath + " 파일을 찾을 수 없음");
			} else {
				Random rnd = new Random();
				for (int i = 0; i < 20; i++) {
					int rIndex = rnd.nextInt(3);
					switch (rIndex) {
					case 0:
						// a-z
						temp.append((char) ((int) (rnd.nextInt(26)) + 97));
						break;
					case 1:
						// A-Z
						temp.append((char) ((int) (rnd.nextInt(26)) + 65));
						break;
					case 2:
						// 0-9
						temp.append((rnd.nextInt(10)));
						break;
					}
				}
				temp.append(".jpg");
				ImageIO.write(image, "jpg", new File("C:/uploadimage/" + temp));

			}
		} catch (IOException e) {
			e.printStackTrace();
		}

		String[] result = new String[5];
		SearchResultVO searchResultVO = new SearchResultVO();
		int i = 0;
		try {

			Process oProcess = new ProcessBuilder("cmd", "/C",
					"activate tensorflow & python C:/inception_image/label_image.py --image C:/uploadimage/" + temp)
							.start();
			oProcess.waitFor();

			BufferedReader stdOut = new BufferedReader(new InputStreamReader(oProcess.getInputStream()));
			System.out.println(stdOut);
			while ((s = stdOut.readLine()) != null) {
				result[i] = s;
				int index = result[i].indexOf("(");
				if (result[i].substring(0, index - 1).equals("bag")) {
					result[i] = "가방";
				} else if (result[i].substring(0, index - 1).equals("bikini")) {
					result[i] = "비키니";
				} else if (result[i].substring(0, index - 1).equals("cap")) {
					result[i] = "모자";
				} else if (result[i].substring(0, index - 1).equals("coat")) {
					result[i] = "코트";
				} else if (result[i].substring(0, index - 1).equals("cotton pants")) {
					result[i] = "면바지";
				} else if (result[i].substring(0, index - 1).equals("hood")) {
					result[i] = "후드";
				} else if (result[i].substring(0, index - 1).equals("jacket")) {
					result[i] = "자켓";
				} else if (result[i].substring(0, index - 1).equals("jean")) {
					result[i] = "청바지";
				} else if (result[i].substring(0, index - 1).equals("long shirt")) {
					result[i] = "긴팔티";
				} else if (result[i].substring(0, index - 1).equals("one piece")) {
					result[i] = "원피스";
				} else if (result[i].substring(0, index - 1).equals("rash guard")) {
					result[i] = "래시가드";
				} else if (result[i].substring(0, index - 1).equals("running shoes")) {
					result[i] = "운동화";
				} else if (result[i].substring(0, index - 1).equals("sandle")) {
					result[i] = "샌들";
				} else if (result[i].substring(0, index - 1).equals("shirt")) {
					result[i] = "셔츠";
				} else if (result[i].substring(0, index - 1).equals("shoes")) {
					result[i] = "구두";
				} else if (result[i].substring(0, index - 1).equals("short pants")) {
					result[i] = "반바지";
				} else if (result[i].substring(0, index - 1).equals("short shirt")) {
					result[i] = "반팔티";
				} else if (result[i].substring(0, index - 1).equals("skirt")) {
					result[i] = "치마";
				} else if (result[i].substring(0, index - 1).equals("sleeveless shirt")) {
					result[i] = "민소매";
				} else if (result[i].substring(0, index - 1).equals("sunglasses")) {
					result[i] = "선글라스";
				} else if (result[i].substring(0, index - 1).equals("tie")) {
					result[i] = "넥타이";
				}
				i += 1;
			}

			searchResultVO.setRank1(result[0]);
			searchResultVO.setRank2(result[1]);
			searchResultVO.setRank3(result[2]);
			searchResultVO.setRank4(result[3]);
			searchResultVO.setRank5(result[4]);

			oProcess.destroy();
		} catch (IOException e) {
			System.out.println("뭔진모르겠지만 오류가 났을것이다");
			System.exit(-1);
		}

		return searchResultVO;

	}

}

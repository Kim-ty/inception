package kr.co.inception.search.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.inception.profile.dto.ProfileDTO;
import kr.co.inception.search.service.SearchService;
import kr.co.inception.search.vo.DetailVO;
import kr.co.inception.search.vo.HashtagVO;
import kr.co.inception.search.vo.ShopVO;
import kr.co.inception.search.vo.TagVO;
import kr.co.inception.search.vo.showVO;

@Controller
@RequestMapping("search")
public class MongoController {

	@Autowired
	SearchService searchService;

	@RequestMapping("/list")
	public String show(ProfileDTO profileDTO, Model model) throws Exception {
		List<showVO> list = searchService.showList();
		model.addAttribute("list", list);
		return "showList";
	}

	@RequestMapping("/{param}")
	public String wordCloud(@PathVariable String param, Model model, HttpServletRequest request) throws Exception {

		request.getSession().setAttribute("searchWord", param);

		HashtagVO vo = searchService.wordCloud(param);
		System.out.println(param);

		List<TagVO> tagList = vo.tags;
		// Collections.shuffle(tagList);
		// Collections.shuffle(tagList);
		// Collections.shuffle(tagList);
		model.addAttribute("tags", tagList);
		model.addAttribute("searchWord", param);

		return "wordcloud";
	}

	@RequestMapping("hashtag")
	public String detail(@ModelAttribute("detail") String hashtag, Model model, HttpServletRequest request)
			throws Exception {
		String searchWord = (String) request.getSession().getAttribute("searchWord");
		List<DetailVO> list = searchService.detail(searchWord, hashtag);
		List<ShopVO> shopList = searchService.shop(searchWord, hashtag);
		System.out.println("11번가 " + shopList.size());

		model.addAttribute("search", searchWord);
		model.addAttribute("detail", hashtag);
		model.addAttribute("list", list);
		model.addAttribute("shop", shopList);
		System.out.println("블로그 개수 " + list.size());
		return "wordDetail";
	}
}

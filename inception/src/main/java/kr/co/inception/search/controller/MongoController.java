package kr.co.inception.search.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.inception.profile.dto.ProfileDTO;
import kr.co.inception.search.service.SearchService;
import kr.co.inception.search.vo.DetailVO;
import kr.co.inception.search.vo.GiBeomVO;
import kr.co.inception.search.vo.HashtagVO;
import kr.co.inception.search.vo.ImageURLVO;
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

	@RequestMapping("/taglist/{param}")
	@ResponseBody
	public List<TagVO> wordCloudAJAX(@PathVariable String param, HttpServletRequest request) {
		request.getSession().setAttribute("searchWord", param);
		HashtagVO vo = searchService.wordCloud(param);
		List<TagVO> tagList = vo.tags;
		return tagList;
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
	// 상휘님작품
	// @RequestMapping("img")
	// public String imageURLList(@ModelAttribute("detail") String hashtag,
	// Model model, HttpServletRequest request)
	// throws Exception {
	// String searchWord = (String)
	// request.getSession().getAttribute("searchWord");
	// List<DetailVO> list = searchService.detail(searchWord, hashtag);
	// // List<ShopVO> shopList = searchService.shop(searchWord, hashtag);
	//
	// List<GiBeomVO> giBeomVO = new ArrayList<GiBeomVO>();
	// for (DetailVO detailVO : list) {
	// for (ImageURLVO imageURLVO : detailVO.getImageURL()) {
	// GiBeomVO vo = new GiBeomVO(detailVO.getUrl(), imageURLVO.getUrl());
	// giBeomVO.add(vo);
	// }
	// }
	//
	// model.addAttribute("giBeomVO", giBeomVO);
	// model.addAttribute("list", list);
	// return "test";
	// }

	// android

	@RequestMapping(value = "/andlist2")
	@ResponseBody
	public List<TagVO> andlist2(@RequestParam("param") String param) {
		HashtagVO vo = searchService.wordCloud(param);
		List<TagVO> tagList = vo.tags;

		return tagList;

	}

	@RequestMapping(value = "/andlistdetail")
	@ResponseBody
	public List<GiBeomVO> andlistdetail(@RequestParam("detail") String hashtag,
			@RequestParam("searchWord") String searchWord) {
		List<DetailVO> list = searchService.detail(searchWord, hashtag);
		List<GiBeomVO> giBeomVO = new ArrayList<GiBeomVO>();
		for (DetailVO detailVO : list) {
			for (ImageURLVO imageURLVO : detailVO.getImageURL()) {
				GiBeomVO vo = new GiBeomVO(detailVO.getUrl(), imageURLVO.getUrl());
				giBeomVO.add(vo);
			}
		}
		return giBeomVO;

	}

	@RequestMapping(value = "/andlistshop")
	@ResponseBody
	public List<ShopVO> andlistshop(@RequestParam("detail") String hashtag,
			@RequestParam("searchWord") String searchWord) {
		List<ShopVO> shopList = searchService.shop(searchWord, hashtag);
		return shopList;

	}
}

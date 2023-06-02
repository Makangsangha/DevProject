package kr.or.ddit.controller.noticeBoard.web;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.ddit.controller.noticeBoard.service.INoticeService;
import kr.or.ddit.vo.NoticeVO;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/notice")
@Slf4j
public class NoticeRetrieveController {
	
	@Inject
	private INoticeService noticeService;
	
	@RequestMapping(value="/list.do")
	public String noticeList() {
		log.info("noticeList() 실행...!");
		return "notice/list";
	}
	
	@RequestMapping(value = "/detail.do")
	public String noticeDetila(int boNo, Model model) {
		NoticeVO noticeVO = noticeService.selectNotice(boNo);
		model.addAttribute("notice", noticeVO);
		return "notice/detail";
	}
}

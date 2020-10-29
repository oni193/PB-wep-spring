package co.kr.playbowling.controller;

import java.util.List;

import javax.inject.Inject;

import org.apache.maven.model.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import co.kr.playbowling.service.BoardService;
import co.kr.playbowling.service.ReplyService;
import co.kr.playbowling.vo.BoardVO;

@Controller
@RequestMapping("/reply/*")
public class ReplyController {
	
	@Inject
	private ReplyService service;

	

}

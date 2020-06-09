package edu.columbia.wlab.covid19cg.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.columbia.wlab.covid19cg.pojo.ArticleNode;


@Controller
@RequestMapping("/search")
public class SearchController {
	
	@ResponseBody 
	@RequestMapping("/searchByKw")
	public Map<String, Object> queryAllUser(HttpServletResponse response, @RequestParam(value = "searchText", defaultValue = "") String searchText){
		Map<String, Object> map = null;  
		String search=searchText;
		System.out.println("search="+search);
		List<ArticleNode> nodes=new ArrayList<ArticleNode>();
		ArticleNode n1=new ArticleNode();
		n1.name="111";
		n1.keywords="11";
		n1.title="111";
		n1.pubdate="111";
		n1.group=1;
		
		ArticleNode n2=new ArticleNode();
		n2.name="222";
		n2.keywords="222";
		n2.title="222";
		n2.pubdate="122";
		n2.group=1;
		
		nodes.add(n1);
		nodes.add(n2);
		map.put("nodes", nodes);   
		//map.put("rows", this.userService.searchByNickname(page));
	    return map;  
	}
	
	
	@ResponseBody 
	@RequestMapping("/test")
	public Map<String, Object> testAllUser(String criteria){
		Map<String, Object> map = null;  
		//String search=searchText;
		//System.out.println("search="+search);
		List<ArticleNode> nodes=new ArrayList<ArticleNode>();
		ArticleNode n1=new ArticleNode();
		n1.name="111";
		n1.keywords="11";
		n1.title="111";
		n1.pubdate="111";
		n1.group=1;
		
		ArticleNode n2=new ArticleNode();
		n2.name="222";
		n2.keywords="222";
		n2.title="222";
		n2.pubdate="122";
		n2.group=1;
		
		nodes.add(n1);
		nodes.add(n2);
		map.put("nodes", nodes);   
		//map.put("rows", this.userService.searchByNickname(page));
	    return map;  
	}
	
	
}

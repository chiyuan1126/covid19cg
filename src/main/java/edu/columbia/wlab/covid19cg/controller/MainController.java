package edu.columbia.wlab.covid19cg.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.columbia.wlab.covid19cg.pojo.ArticleEdge;
import edu.columbia.wlab.covid19cg.pojo.ArticleNode;
import edu.columbia.wlab.covid19cg.util.FileUtil;


@Controller
@RequestMapping("/main")
public class MainController {

	@RequestMapping("/ctkb")
	public String queryUser(){
		//Integer conceptSetId=ohdsiApiService.createConceptSetByConceptId("Type 2 diabetes", 201826);
		return "statisticsPage";
	}
	
	@ResponseBody 
	@RequestMapping("/search")
	public Map<String, Object> addSearchText(HttpSession httpSession, String searchTxt){
		Map<String, Object> map = new HashMap<String, Object>(); 
		httpSession.setAttribute("keywords", searchTxt);
		System.out.println("Search="+searchTxt);
		return map;
	}
	
	@ResponseBody 
	@RequestMapping("/test2")
	public Map<String, Object> testAllUser(HttpSession httpSession, String searchTxt){
		Map<String, Object> map = new HashMap<String, Object>();  
		if(searchTxt==null){
			System.out.println("searchTxt="+searchTxt);
			searchTxt="";
		}
		if(httpSession.getAttribute("keywords")!=null){
			searchTxt=(String) httpSession.getAttribute("keywords");
		}
		List<ArticleNode> nodes=new ArrayList<ArticleNode>();
		String content=FileUtil.readFile("/Users/cy2465/Downloads/pubmed_ref_project/0423_metadata_updated.txt");
		String[] rows=content.split("\n");
		HashMap<Integer,Integer> iddic=new HashMap<Integer,Integer>();
		for(String r:rows){
			String[] en=r.split("\t");
			if(en.length>3){
				if(en[3].contains(searchTxt)){
					ArticleNode an=new ArticleNode();
					an.id=Integer.valueOf(en[0]);
					an.name=en[2];
					an.title=en[3];
					an.pubdate="unknown";
					an.group=1;
					nodes.add(an);
				}
			}
		}
		Set<Integer> includenodes=new HashSet<Integer>();
		for(int i=0;i<nodes.size();i++){
			Integer idtrans=nodes.get(i).id;
			iddic.put(idtrans,i);
			includenodes.add(idtrans);
		}
		String linkcontent=FileUtil.readFile("/Users/cy2465/Downloads/pubmed_ref_project/0423_cite_pair.txt");
		String[] linkrows=linkcontent.split("\n");
		List<ArticleEdge> linklist=new ArrayList<ArticleEdge>();
		for(String lr:linkrows){
			//System.out.println(lr);
			String[] enlr=lr.split("\t");
			Integer sourcelinkid=Integer.valueOf(enlr[0]);
			Integer targetlinkid=Integer.valueOf(enlr[1]);
			if(includenodes.contains(sourcelinkid)&&includenodes.contains(targetlinkid)){
				ArticleEdge ae=new ArticleEdge();
				ae.source=iddic.get(Integer.valueOf(enlr[0]));
				ae.target=iddic.get(Integer.valueOf(enlr[1]));
				ae.value=1;
				linklist.add(ae);
				System.out.println(enlr[0]+"\t"+enlr[1]);
			}
		}
		map.put("nodes",nodes);
		map.put("links",linklist);
		//map.put("rows", this.userService.searchByNickname(page));
	    return map;  
		
	}
	

	
	//subscribe
	@ResponseBody 
	@RequestMapping("/subscribe")
	public Map<String, Object> subscribeLit(String pmcid){
		Map<String, Object> map = new HashMap<String, Object>();  
		System.out.println("PMCID="+pmcid);
		
		//map.put("rows", this.userService.searchByNickname(page));
	    return map;  
	}
	
}

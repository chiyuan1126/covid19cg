package edu.columbia.wlab.covid19cg.pojo;

import java.util.List;

public class Ref {
	private String doi="None";
	private String pmid="None";
	private String pmcid="None";
	private List<String> authors;
	private String title="None";
	private String pubdate="None";
	private String source="None";
	private String volume="None";
	private String issue="None";
	private String pages="None";
	
	
	public String getDoi() {
		return doi;
	}
	public void setDoi(String doi) {
		this.doi = doi;
	}
	public String getPmid() {
		return pmid;
	}
	public void setPmid(String pmid) {
		this.pmid = pmid;
	}
	public String getPmcid() {
		return pmcid;
	}
	public void setPmcid(String pmcid) {
		this.pmcid = pmcid;
	}
	public List<String> getAuthors() {
		return authors;
	}
	public void setAuthors(List<String> authors) {
		this.authors = authors;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPubdate() {
		return pubdate;
	}
	public void setPubdate(String pubdate) {
		this.pubdate = pubdate;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getVolume() {
		return volume;
	}
	public void setVolume(String volume) {
		this.volume = volume;
	}
	public String getIssue() {
		return issue;
	}
	public void setIssue(String issue) {
		this.issue = issue;
	}
	public String getPages() {
		return pages;
	}
	public void setPages(String pages) {
		this.pages = pages;
	}
	
	
}

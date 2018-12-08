package Questify.Beans;

import java.util.Date;

public class Publication {
	private String id;
	private User editor;
	private String description;
	private Date date;
	private Date lastUpdatedDate;
	private boolean isClosed;
	private int upVote;
	private int downVote;
	private int commentNb;
	private Tag[] tags ;
	public Publication() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Publication(String id, User editor, String description, Date date, Date lastUpdatedDate, boolean isClosed,
			int upVote, int downVote, int commentNb, Tag[] tags) {
		super();
		this.id = id;
		this.editor = editor;
		this.description = description;
		this.date = date;
		this.lastUpdatedDate = lastUpdatedDate;
		this.isClosed = isClosed;
		this.upVote = upVote;
		this.downVote = downVote;
		this.commentNb = commentNb;
		this.tags = tags;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public User getEditor() {
		return editor;
	}
	public void setEditor(User editor) {
		this.editor = editor;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Date getLastUpdatedDate() {
		return lastUpdatedDate;
	}
	public void setLastUpdatedDate(Date lastUpdatedDate) {
		this.lastUpdatedDate = lastUpdatedDate;
	}
	public boolean isClosed() {
		return isClosed;
	}
	public void setClosed(boolean isClosed) {
		this.isClosed = isClosed;
	}
	public int getUpVote() {
		return upVote;
	}
	public void setUpVote(int upVote) {
		this.upVote = upVote;
	}
	public int getDownVote() {
		return downVote;
	}
	public void setDownVote(int downVote) {
		this.downVote = downVote;
	}
	public int getCommentNb() {
		return commentNb;
	}
	public void setCommentNb(int commentNb) {
		this.commentNb = commentNb;
	}
	public Tag[] getTags() {
		return tags;
	}
	public void setTags(Tag[] tags) {
		this.tags = tags;
	}
	
	
}

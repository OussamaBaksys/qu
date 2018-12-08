package Questify.Beans;

import java.util.Date;

public class Comment {
	private String id;
	private String publicationId;
	private User editor;
	private String reply;
	private Date date;
	private Date lastUpdatedDate;
	private int upVote;
	private int downVote;
	private int subCommentNb;
	private Comment[] subComments;
	
	public Comment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Comment(String id, String publicationId, User editor, String reply, Date date, Date lastUpdatedDate,
			int upVote, int downVote, int subCommentNb, Comment[] subComments) {
		super();
		this.id = id;
		this.publicationId = publicationId;
		this.editor = editor;
		this.reply = reply;
		this.date = date;
		this.lastUpdatedDate = lastUpdatedDate;
		this.upVote = upVote;
		this.downVote = downVote;
		this.subCommentNb = subCommentNb;
		this.subComments = subComments;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPublicationId() {
		return publicationId;
	}
	public void setPublicationId(String publicationId) {
		this.publicationId = publicationId;
	}
	public User getEditor() {
		return editor;
	}
	public void setEditor(User editor) {
		this.editor = editor;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Date getLastModifiedDate() {
		return lastUpdatedDate;
	}
	public void setLastUpdatedDate(Date lastUpdatedDate) {
		this.lastUpdatedDate = lastUpdatedDate;
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
	public int getNbSubComments() {
		return subCommentNb;
	}
	public void setSubCommentNb(int subCommentNb) {
		this.subCommentNb = subCommentNb;
	}
	public Comment[] getSubComments() {
		return subComments;
	}
	public void setSubComments(Comment[] subComments) {
		this.subComments = subComments;
	}
}

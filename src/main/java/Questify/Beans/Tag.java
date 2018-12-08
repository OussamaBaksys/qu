package Questify.Beans;

public class Tag {
	private String id;
	private String name;
	private int publicationNb;
	public Tag() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Tag(String id, String name, int publicationNb) {
		super();
		this.id = id;
		this.name = name;
		this.publicationNb = publicationNb;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPublicationNb() {
		return publicationNb;
	}
	public void setPublicationNb(int publicationNb) {
		this.publicationNb = publicationNb;
	}
}

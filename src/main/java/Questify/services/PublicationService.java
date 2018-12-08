package Questify.services;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;

import Questify.Beans.Comment;
import Questify.Beans.Publication;
import Questify.Beans.Tag;
import Questify.Beans.User;

@Service
public class PublicationService {
	private static SimpleDateFormat sdf_time  = new SimpleDateFormat("HH:mm a");
	private static SimpleDateFormat sdf_day  = new SimpleDateFormat("E M 'at' HH:mm a");
	private static SimpleDateFormat sdf_year  = new SimpleDateFormat("YYYY");
	private static SimpleDateFormat sdf_default  = new SimpleDateFormat("dd.mm.YYYY 'at' HH:mm a");
	private static List<Publication> pubs = new ArrayList<Publication>();
	private static List<Tag> tags = new ArrayList<Tag>();
	private static List<Comment> comments = new ArrayList<Comment>();
	static {
		Date now = new Date();
		for(int i=0; i<30; i++){
			tags.add(new Tag(i+"", "tag "+i, i));
		}
		
		String justNow = getDate(now,now);
		String today = getDate(new Date(1541370000000L),now);
		String yesterday = getDate(new Date(1541270000000L),now);
		String year = getDate(new Date(1531270000000L),now);
		String oldyear = getDate(new Date(1401270000000L),now);
		
		System.out.println(justNow);
		System.out.println(today);
		System.out.println(yesterday);
		System.out.println(year);
		System.out.println(oldyear);
		
		for(int i=0; i<10; i++){
			pubs.add(new Publication(
					i+"",
					new User("userId","first","last name" , null, null, null, "profile.png"),
					"Comment passer un entretien professionnel en fin d'études ?",
					new Date(),
					new Date(),
					false,
					i,
					i,
					i,
					new Tag[]{tags.get(i),tags.get(20-i-1)}));
		}
		
		for(int i=0; i<20; i++){
			comments.add(new Comment(
					i+"", 
					i%10+"",
					new User("userId","first","last name" , null, null, null, "profile.png"),
					"the user reply",
					new Date(),
					new Date(),
					i,
					i,
					i,
					i%3==0?null:
					new Comment[]{new Comment(
							20-i+"", 
							20-i+"",
							new User("userId","first","last name" , null, null, null, "profile.png"),
							"the user reply",
							new Date(),
							new Date(),
							20-i,
							20-i,
							20-i,
							null
							)}));
		}
	}
	
	public ArrayList<Publication> getAllPubs(){
		return (ArrayList<Publication>) pubs;
	}
	
	public Publication getPub(String id){
		for(Publication pub : pubs){
			if(pub.getId().equals(id)) return pub;
		}
		return null;
	}
	
	public ArrayList<Comment> getCommentsFor(String pubId){
		List<Comment> pubComments = new ArrayList<Comment>();
		for(Comment comment : comments){
			if(comment.getPublicationId().equals(pubId)){
				pubComments.add(comment);
			}
		}
		return (ArrayList<Comment>) pubComments;
	}
	
	public ArrayList<Tag> geTags(){
		return (ArrayList<Tag>) tags;
	}
	
	static String getDate(Date date, Date now){
		long diff = (now.getTime() - date.getTime())/(long)1000;
		if(diff<60)
			return "Just now";
		if(diff/(long)(24*60*60)<1)
				return "Today at "+sdf_time.format(date);
		if(diff/(long)(24*60*60)<2)
			return "Yestreday at "+sdf_time.format(date);
		if(sdf_year.format(date).equals(sdf_year.format(now)))
			return sdf_day.format(date);
		return sdf_default.format(date);
	}
}

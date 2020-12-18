package co.noblecobra.MySite.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Work {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	private String title;
	private String medium;
	private String summary;
	private String revLink;
	private String saleLink;
	private String image;
	private Boolean canon;
	
	public Work() {
		
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getMedium() {
		return medium;
	}

	public void setMedium(String medium) {
		this.medium = medium;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	

	public String getRevLink() {
		return revLink;
	}

	public void setRevLink(String revLink) {
		this.revLink = revLink;
	}

	public String getSaleLink() {
		return saleLink;
	}

	public void setSaleLink(String saleLink) {
		this.saleLink = saleLink;
	}

	public Boolean getCanon() {
		return canon;
	}

	public void setCanon(Boolean canon) {
		this.canon = canon;
	}
	
	

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return "Work [id=" + id + ", title=" + title + ", medium=" + medium + ", summary=" + summary + ", revLink="
				+ revLink + ", saleLink=" + saleLink + ", image=" + image + ", canon=" + canon + "]";
	}

	

	

}

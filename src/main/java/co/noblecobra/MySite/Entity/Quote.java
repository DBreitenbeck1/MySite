package co.noblecobra.MySite.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Quote {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	private String quotation;
	private String subject;
	private String source;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getQuote() {
		return quotation;
	}
	public void setQuote(String quote) {
		this.quotation = quote;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	
	
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	@Override
	public String toString() {
		return "Quote [id=" + id + ", quote=" + quotation + ", source=" + source + "]";
	}
	
	
	
	
}

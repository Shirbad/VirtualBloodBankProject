package in.softronix.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "dateofdonate")
public class dateofdonate {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	
	private int Id;
	private String yourid;
	private String dod;
	private int bloodbankid;
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getYourid() {
		return yourid;
	}
	public void setYourid(String yourid) {
		this.yourid = yourid;
	}
	public String getDod() {
		return dod;
	}
	public void setDod(String dob) {
		this.dod= dob;
	}
	public int getBloodbankid() {
		return bloodbankid;
	}
	public void setBloodbankid(int bloodbankid) {
		this.bloodbankid = bloodbankid;
	}
	
	
}

package in.softronix.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="addbloodbag")
public class bloodbag {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	
	private int id;
	
	private int bloodbankid;
	private String donorid;
	private String bloodgroup;
    private String rh;
    private String hb;
    private String hiv;
    private String hsbag;
    private String hcv;
    private String vdrl;
    private String expirydate;
    private String mpmf;
    private String bp;
    private String status;
    
   

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getBloodbankid() {
		return bloodbankid;
	}
	public void setBloodbankid(int bloodbankid) {
		this.bloodbankid = bloodbankid;
	}
	public String getDonorid() {
		return donorid;
	}
	public void setDonorid(String donorid) {
		this.donorid = donorid;
	}
	public String getBloodgroup() {
		return bloodgroup;
	}
	public void setBloodgroup(String bloodgroup) {
		this.bloodgroup = bloodgroup;
	}
	public String getRh() {
		return rh;
	}
	public void setRh(String rh) {
		this.rh = rh;
	}
	public String getHb() {
		return hb;
	}
	public void setHb(String hb) {
		this.hb = hb;
	}
	public String getHiv() {
		return hiv;
	}
	public void setHiv(String hiv) {
		this.hiv = hiv;
	}
	public String getHsbag() {
		return hsbag;
	}
	public void setHsbag(String hsbag) {
		this.hsbag = hsbag;
	}
	public String getHcv() {
		return hcv;
	}
	public void setHcv(String hcv) {
		this.hcv = hcv;
	}
	
	 public String getVdrl() {
			return vdrl;
		}
		public void setVdrl(String vdrl) {
			this.vdrl = vdrl;
		}
		
		
	public String getExpirydate() {
		return expirydate;
	}
	public void setExpirydate(String expirydate) {
		this.expirydate = expirydate;
	}
	public String getMpmf() {
		return mpmf;
	}
	public void setMpmf(String mpmf) {
		this.mpmf = mpmf;
	}
	public String getBp() {
		return bp;
	}
	public void setBp(String bp) {
		this.bp = bp;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
    
    
}

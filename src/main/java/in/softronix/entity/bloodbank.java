package in.softronix.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="bloodbankregister")
public class bloodbank {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	
	private int id;
	
	private String userid;
	private String name;
	private String contactNo;
	private String addressLine1;
	private String district;
	private String inchargerName;
	private String inchargerPhone;
	private String bloodComponentSeparationFacility;
	private String attachedToStorageUnit;
	private String licenseNo;
	private String licenseStatus;
	private String validityUpto;
	private String reportingPeriod;
	private String supportedByNACO;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContactNo() {
		return contactNo;
	}
	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}
	public String getAddressLine1() {
		return addressLine1;
	}
	public void setAddressLine1(String addressLine1) {
		this.addressLine1 = addressLine1;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getInchargerName() {
		return inchargerName;
	}
	public void setInchargerName(String inchargerName) {
		this.inchargerName = inchargerName;
	}
	public String getInchargerPhone() {
		return inchargerPhone;
	}
	public void setInchargerPhone(String inchargerPhone) {
		this.inchargerPhone = inchargerPhone;
	}
	public String getBloodComponentSeparationFacility() {
		return bloodComponentSeparationFacility;
	}
	public void setBloodComponentSeparationFacility(String bloodComponentSeparationFacility) {
		this.bloodComponentSeparationFacility = bloodComponentSeparationFacility;
	}
	public String getAttachedToStorageUnit() {
		return attachedToStorageUnit;
	}
	public void setAttachedToStorageUnit(String attachedToStorageUnit) {
		this.attachedToStorageUnit = attachedToStorageUnit;
	}
	public String getLicenseNo() {
		return licenseNo;
	}
	public void setLicenseNo(String licenseNo) {
		this.licenseNo = licenseNo;
	}
	public String getLicenseStatus() {
		return licenseStatus;
	}
	public void setLicenseStatus(String licenseStatus) {
		this.licenseStatus = licenseStatus;
	}
	public String getValidityUpto() {
		return validityUpto;
	}
	public void setValidityUpto(String validityUpto) {
		this.validityUpto = validityUpto;
	}
	public String getReportingPeriod() {
		return reportingPeriod;
	}
	public void setReportingPeriod(String reportingPeriod) {
		this.reportingPeriod = reportingPeriod;
	}
	public String getSupportedByNACO() {
		return supportedByNACO;
	}
	public void setSupportedByNACO(String supportedByNACO) {
		this.supportedByNACO = supportedByNACO;
	}
	
}

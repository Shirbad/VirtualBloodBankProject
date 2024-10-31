package in.softronix.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.ui.Model;

import in.softronix.entity.BagStatus;
import in.softronix.entity.DHealth;
import in.softronix.entity.HRequest;
import in.softronix.entity.Helpus;
import in.softronix.entity.Login;
import in.softronix.entity.SHealth;
import in.softronix.entity.StockRegister;
import in.softronix.entity.bloodbank;
import in.softronix.entity.bloodgroupcount;
import in.softronix.entity.donorregister;
import in.softronix.entity.hospital;
import in.softronix.entity.virtualbloodbank;
import in.softronix.entity.dateofdonate;
import in.softronix.entity.searchblood;
import in.softronix.entity.bloodbag;
import in.softronix.repository.DonorRegisterRepository;
import in.softronix.service.BagStatusService;
import in.softronix.service.BloodBagService;
import in.softronix.service.BloodGroupCountService;
import in.softronix.service.DonorHealthService;
import in.softronix.service.HRegisterService;
import in.softronix.service.HRequestService;
import in.softronix.service.HelpusService;
import in.softronix.service.LoginService;
import in.softronix.service.SHealthService;
import in.softronix.service.SearchbloodService;
import in.softronix.service.bloodbankService;
import in.softronix.service.dateofdonateService;
import in.softronix.service.donorRegisterService;
import in.softronix.service.virtualbloodbankService;
import in.softronix.service.stockRegisterService;
import jakarta.persistence.metamodel.SetAttribute;
import jakarta.servlet.http.HttpServletRequest;

@Controller
public class virtualbloodbankController {

	@Autowired
	virtualbloodbankService service;

	@Autowired
	LoginService logservice;

	@Autowired
	donorRegisterService dservice;

	@Autowired
	dateofdonateService dodservice;

	@Autowired
	bloodbankService bloodbankservice;

	@Autowired
	private SearchbloodService searchBloodService;

	@Autowired
	private HRegisterService HRegisterService;

	@Autowired
	private HRequestService hRequestService;

	@Autowired
	private stockRegisterService stockRegisterService;

	@Autowired
	private BloodBagService bloodBagService;

	@Autowired
	private SHealthService shealthservice;

	@Autowired
	private BagStatusService bagstatusservice;

	@Autowired
	private DonorHealthService dhealthservice;

	@Autowired
	private HelpusService helpusservice;
	
	@Autowired
	private BloodGroupCountService Bgservice;
	

	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String ind() {
		return "index";
	}

	@RequestMapping(value = "header", method = RequestMethod.GET)
	public String head() {
		return "header";
	}

	@RequestMapping(value = "content", method = RequestMethod.GET)
	public String wel() {
		return "content";
	}

	@RequestMapping(value = "menu1", method = RequestMethod.GET)
	public String side1() {
		return "menu1";
	}

	@RequestMapping(value = "menu2", method = RequestMethod.GET)
	public String side2() {
		return "menu2";
	}

	@RequestMapping(value = "footer", method = RequestMethod.GET)
	public String foot() {
		return "footer";
	}

	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String regis() {
		return "register";
	}

	@RequestMapping(value = "save", method = RequestMethod.POST)
	public String saves(@RequestParam String email, @RequestParam String password, @RequestParam String repass,
			@RequestParam String role) {
		virtualbloodbank bloodbank = new virtualbloodbank();
		bloodbank.setEmail(email);
		bloodbank.setPassword(password);
		bloodbank.setRetypepassword(repass);
		bloodbank.setRole(role);

		virtualbloodbank bank = new virtualbloodbank();

		if (password.equals(repass)) {
			bank = service.savePro(bloodbank);

		}

		if (bank == null) {
			return "register";
		} else {
			return "redirect:/content";

		}
	}

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login(Model model) {
		return "login";
	}

	@RequestMapping(value = "validate", method = RequestMethod.POST)
	public String validate(@RequestParam String userid, @RequestParam String password, Model model,
			HttpServletRequest request) {
		virtualbloodbank user = logservice.findByUser(userid);

		request.getSession().setAttribute("id", user.getEmail());
		request.getSession().setAttribute("userRole", user.getRole());
		if (user != null && user.getPassword().equals(password)) {

			if (user.getRole().equals("donor")) {
				return "redirect:/donorindex";
			} else if (user.getRole().equals("bloodbank")) {
				return "redirect:/bbindex";
			} else if (user.getRole().equals("hospital")) {
				return "redirect:/hindex";
			} else if (user.getRole().equals("stockmanager")) {

				return "redirect:/stockindex";
			} else {

				return "login";
			}

		} else {
			model.addAttribute("errorMessage", "Incorrect UserId or password");
			return "login";
		}

	}

	@RequestMapping(value = "donorindex", method = RequestMethod.GET)
	public String donorindex() {
		return "donorindex";
	}

	@RequestMapping(value = "dheader", method = RequestMethod.GET)
	public String dhead() {
		return "dheader";
	}

	@RequestMapping(value = "deditprofile", method = RequestMethod.GET)
	public String eprofile() {
		return "deditprofile";
	}

	@RequestMapping(value = "dcontent", method = RequestMethod.GET)
	public String dcontent() {
		return "dcontent";
	}

	@RequestMapping(value = "dregister", method = RequestMethod.GET)
	public String dregister() {
		return "dregister";
	}

	@RequestMapping(value = "dsave", method = RequestMethod.POST)
	public String saveDonorRegister(@RequestParam String userid, @RequestParam String fname, @RequestParam String dob,
			@RequestParam String contact, @RequestParam String address, @RequestParam String district,
			@RequestParam String gender, @RequestParam String bloodgroup, @RequestParam String rh,
			@RequestParam String weight,@RequestParam String dod, @RequestParam String frequency, Model model) {
		donorregister donorRegister = new donorregister();
		donorRegister.setUserid(userid);
		donorRegister.setFname(fname);
		donorRegister.setDob(dob);
		donorRegister.setContact(contact);
		donorRegister.setAddress(address);
		donorRegister.setDistrict(district);
		donorRegister.setGender(gender);
		donorRegister.setBloodgroup(bloodgroup);
		donorRegister.setRh(rh);
		donorRegister.setWeight(weight);
		donorRegister.setDod(dod);
		donorRegister.setFrequency(frequency);

		donorregister savedDonorRegister = dservice.saveDonorRegister(donorRegister);
		if (savedDonorRegister != null) {
			bloodgroupcount existingBloodGroupCount = Bgservice.findByBloodgroupAndRh(bloodgroup, rh);
			 if (existingBloodGroupCount != null) {
		            // If the combination exists, increment the count
		            existingBloodGroupCount.setCount(existingBloodGroupCount.getCount() + 1);
		            Bgservice.saveBloodGroupCount(existingBloodGroupCount);
		        } else {
		            // If the combination doesn't exist, create a new record with count 1
		            bloodgroupcount newBloodCount = new bloodgroupcount();
		            newBloodCount.setBloodgroup(bloodgroup);
		            newBloodCount.setRh(rh);
		            newBloodCount.setCount(1);  // Set count to 1 initially
		            Bgservice.saveBloodGroupCount(newBloodCount);
		        } 

	       

			return "redirect:/dcontent";
		} else {
			return "dregister";
		}
	}

	@RequestMapping(value = "dhealth", method = RequestMethod.GET)
	public String dhealth() {
		return "dhealth";
	}

	@RequestMapping(value = "savedhealth", method = RequestMethod.POST)
	public String savedhealth(@RequestParam String yourid, @RequestParam String status) {
		DHealth dhealth = new DHealth();
		dhealth.setYourid(yourid);
		;
		dhealth.setStatus(status);

		DHealth savedhealth = dhealthservice.saveDhealth(dhealth);
		if (savedhealth != null) {
			return "redirect:/stockcontent";
		} else {
			return "dhealth";
		}
	}

	@RequestMapping(value = "dedit", method = RequestMethod.GET)
	public String dedit() {
		return "dedit";
	}

	@RequestMapping(value = "dedit", method = RequestMethod.POST)
	public String editProfile(@RequestParam("userid") String userId, Model model) {
		donorregister donor = dservice.findByUserId(userId);

		if (donor != null) {
			model.addAttribute("donor", donor);
			return "deditprofile";
		} else {
			model.addAttribute("error", "User not found");
			return "dedit";
		}
	}

	@RequestMapping(value = "deditProfile", method = RequestMethod.POST)
	public String updateProfile(@RequestParam Map<String, String> params, Model model) {
		String userId = params.get("userid");
		donorregister donor = dservice.findByUserId(userId);

		if (donor != null) {
			donor.setFname(params.get("fname"));
			donor.setDob(params.get("dob"));
			donor.setContact(params.get("contact"));
			donor.setAddress(params.get("address"));
			donor.setDistrict(params.get("district"));
			donor.setGender(params.get("gender"));
			donor.setBloodgroup(params.get("bloodgroup"));
			donor.setRh(params.get("rh"));
			donor.setWeight(params.get("weight"));

			dservice.saveDonorRegister(donor);
			return "redirect:/dcontent"; // or some success page
		} else {
			model.addAttribute("error", "User not found");
			return "deditprofile";
		}
	}

	@RequestMapping(value = "dateofdonate", method = RequestMethod.GET)
	public String dateofdonate() {
		return "dateofdonate";
	}

	@RequestMapping(value = "dateofdonate", method = RequestMethod.POST)
	public String saveDateOfDonate(@RequestParam String yourid, @RequestParam String dod, @RequestParam int bbid,
			Model model, HttpServletRequest request) {

		List<dateofdonate> list = new ArrayList<>();
		list = dodservice.getHistoryByYourId((String) request.getSession().getAttribute("id"));

		request.getSession().setAttribute("yourId", yourid);

		if (list.size() > 0) {
			request.getSession().setAttribute("list", list);

			return "redirect:/dhistory";
		} else {
			model.addAttribute("error", "Failed to save the date on donate");
			return "dateofdonate";
		}
	}

	@RequestMapping(value = "dhistory", method = RequestMethod.GET)
	public String showhistory() {
		return "dhistory";
	}

	@RequestMapping(value = "dhistory", method = RequestMethod.POST)
	public String showHistory(@RequestParam("yourid") String yourid, Model model) {
		List<dateofdonate> history = dodservice.getHistoryByYourId(yourid);
		model.addAttribute("history", history);
		return "dhistory";
	}

	@RequestMapping(value = "rindex", method = RequestMethod.GET)
	public String rindex() {
		return "rindex";
	}

	@RequestMapping(value = "resetpassword", method = RequestMethod.GET)
	public String resetpass() {
		return "resetpassword";
	}

	@RequestMapping(value = "resetpassword", method = RequestMethod.POST)
	public String resetpassword(@RequestParam String password, @RequestParam String repass, Model model,
			HttpServletRequest request) {
		if (password.equals(repass)) {
			virtualbloodbank user = new virtualbloodbank();
			virtualbloodbank user1 = new virtualbloodbank();
			virtualbloodbank user2 = new virtualbloodbank();

			user2 = service.findByUserId((String) request.getSession().getAttribute("id"));

			user.setId(user2.getId());
			user.setPassword(password);
			user1 = service.update(user);

			if (user1 != null) {

				return "login";
			} else {
				model.addAttribute("error", "Not found data");
				return "resetpassword";
			}
		} else {
			return "resetpassword";
		}
	}

	@RequestMapping(value = "rheader", method = RequestMethod.GET)
	public String rheader(Model model, HttpServletRequest request) {
		String role = (String) request.getSession().getAttribute("userRole");
		model.addAttribute("role", role);
		return "rheader";
	}

	@RequestMapping(value = "bbindex", method = RequestMethod.GET)
	public String bbindex() {
		return "bbindex";
	}

	@RequestMapping(value = "bbheader", method = RequestMethod.GET)
	public String bbheader() {
		return "bbheader";
	}

	@RequestMapping(value = "bbcontent", method = RequestMethod.GET)
	public String bbcontent() {
		return "bbcontent";
	}

	@RequestMapping(value = "bbregister", method = RequestMethod.GET)
	public String bbregister() {
		return "bbregister";
	}

	@RequestMapping(value = "bbsave", method = RequestMethod.POST)
	public String saveBloodBank(@RequestParam String userid, @RequestParam String name, @RequestParam String contactNo,
			@RequestParam String addressLine1, @RequestParam String district, @RequestParam String inchargerName,
			@RequestParam String inchargerPhone, @RequestParam String bloodComponentSeparationFacility,
			@RequestParam String attachedToStorageUnit, @RequestParam String licenseNo,
			@RequestParam String licenseStatus, @RequestParam String validityUpto, @RequestParam String reportingPeriod,
			@RequestParam String supportedByNACO, Model model) {

		bloodbank bloodBank = new bloodbank();
		bloodBank.setUserid(userid);
		bloodBank.setName(name);
		bloodBank.setContactNo(contactNo);
		bloodBank.setAddressLine1(addressLine1);
		bloodBank.setDistrict(district);
		bloodBank.setInchargerName(inchargerName);
		bloodBank.setInchargerPhone(inchargerPhone);
		bloodBank.setBloodComponentSeparationFacility(bloodComponentSeparationFacility);
		bloodBank.setAttachedToStorageUnit(attachedToStorageUnit);
		bloodBank.setLicenseNo(licenseNo);
		bloodBank.setLicenseStatus(licenseStatus);
		bloodBank.setValidityUpto(validityUpto);
		bloodBank.setReportingPeriod(reportingPeriod);
		bloodBank.setSupportedByNACO(supportedByNACO);

		bloodbank savedBloodBank = bloodbankservice.saveBloodBank(bloodBank);

		if (savedBloodBank != null) {
			return "redirect:/bbcontent";
		} else {
			model.addAttribute("error", "Failed to save the blood bank registration.");
			return "bbregister";
		}
	}

	@RequestMapping(value = "bedit", method = RequestMethod.GET)
	public String bedit() {
		return "bedit";
	}

	@RequestMapping(value = "bedit", method = RequestMethod.POST)
	public String beditProfile(@RequestParam("userid") String userId, Model model) {
		bloodbank blood = bloodbankservice.findByUserId(userId);

		if (blood != null) {
			model.addAttribute("bloodBank", blood);
			return "bbeditprofile";
		} else {
			model.addAttribute("error", "User not found");
			return "bedit";
		}
	}

	@RequestMapping(value = "bbeditprofile", method = RequestMethod.POST)
	public String bbupdateprofile(@RequestParam Map<String, String> params, Model model) {
		String userId = params.get("userid");
		bloodbank blood = bloodbankservice.findByUserId(userId);

		if (blood != null) {
			blood.setName(params.get("name"));
			blood.setContactNo(params.get("contactNo"));
			blood.setAddressLine1(params.get("addressLine1"));
			blood.setDistrict(params.get("district"));
			blood.setInchargerName(params.get("inchargerName"));
			blood.setInchargerPhone(params.get("inchargerPhone"));
			blood.setBloodComponentSeparationFacility(params.get("bloodComponentSeparationFacility"));
			blood.setAttachedToStorageUnit(params.get("attachedToStorageUnit"));
			blood.setLicenseNo(params.get("licenseNo"));
			blood.setLicenseStatus(params.get("licenseStatus"));
			blood.setValidityUpto(params.get("validityUpto"));
			blood.setReportingPeriod(("reportingPeriod"));
			blood.setSupportedByNACO(("supportedByNACO"));

			bloodbankservice.saveBloodBank(blood);
			return "redirect:/bbcontent";
		} else {
			model.addAttribute("error", "User not found");
			return "bbeditprofile";
		}
	}

	@RequestMapping(value = "searchindex", method = RequestMethod.GET)
	public String searchindex() {
		return "searchindex";
	}

	@RequestMapping(value = "searchblood", method = RequestMethod.GET)
	public String search() {
		return "searchblood";
	}

	@RequestMapping(value = "sheader", method = RequestMethod.GET)
	public String sheader() {
		return "sheader";
	}

	@RequestMapping(value = "searchsave", method = RequestMethod.GET)
	public String searchblood(HttpServletRequest request, @RequestParam String bloodgroup, @RequestParam String rh,
			@RequestParam String district) {
		List<donorregister> d = new ArrayList<donorregister>();
		d = dservice.getAll();

		bloodbank list = new bloodbank();

		list = bloodbankservice.findByUserId((String) request.getSession().getAttribute("id"));

		request.getSession().setAttribute("bg", bloodgroup);

		request.getSession().setAttribute("rh", rh);
		request.getSession().setAttribute("district", district);
		request.getSession().setAttribute("list", d);
		request.getSession().setAttribute("list1", list.getUserid());

		if (d.size() > 0) {
			return "searchresults";
		} else {
			return "searchblood";

		}
	}

	@RequestMapping(value = "searchresults", method = RequestMethod.GET)
	public String searchresult() {
		return "searchresults";
	}

	@RequestMapping(value = "checkindex", method = RequestMethod.GET)
	public String checkindex() {
		return "checkindex";
	}

	@RequestMapping(value = "checkheader", method = RequestMethod.GET)
	public String checkheader(Model model, HttpServletRequest request) {
		String role = (String) request.getSession().getAttribute("userRole");
		model.addAttribute("role", role);
		return "checkheader";
	}

	@RequestMapping(value = "hindex", method = RequestMethod.GET)
	public String hindex() {
		return "hindex";
	}

	@RequestMapping(value = "hheader", method = RequestMethod.GET)
	public String hheader() {
		return "hheader";
	}

	@RequestMapping(value = "hcontent", method = RequestMethod.GET)
	public String hcontent() {
		return "hcontent";
	}

	@RequestMapping(value = "hregister", method = RequestMethod.GET)
	public String hregister() {
		return "hregister";
	}

	@RequestMapping(value = "hsaveregister", method = RequestMethod.POST)
	public String saveHospitalRegister(@RequestParam String userid, @RequestParam String fname,
			@RequestParam String contact, @RequestParam String address, @RequestParam String district,
			@RequestParam String mdname, @RequestParam String mdno, Model model) {
		hospital hospital = new hospital();
		hospital.setUserid(userid);
		hospital.setFname(fname);
		hospital.setContact(contact);
		hospital.setAddress(address);
		hospital.setDistrict(district);
		hospital.setMdname(mdname);
		hospital.setMdno(mdno);

		hospital savedHospital = HRegisterService.saveHospitalRegister(hospital);
		if (savedHospital != null) {
			return "redirect:/hcontent";
		} else {
			return "hregister";
		}
	}

	@RequestMapping(value = "hedit", method = RequestMethod.GET)
	public String hedit() {
		return "hedit";
	}

	@RequestMapping(value = "hedit", method = RequestMethod.POST)
	public String heditProfile(@RequestParam("userid") String userId, Model model) {
		hospital Hos = HRegisterService.findByUserId(userId);

		if (Hos != null) {
			model.addAttribute("Hospital", Hos);
			return "heditprofile";
		} else {
			model.addAttribute("error", "User not found");
			return "hedit";
		}
	}

	@RequestMapping(value = "heditprofile", method = RequestMethod.POST)
	public String hupdateprofile(@RequestParam Map<String, String> params, Model model) {
		String userId = params.get("userid");
		hospital Hos = HRegisterService.findByUserId(userId);

		if (Hos != null) {
			Hos.setFname(params.get("fname"));
			Hos.setContact(params.get("contact"));
			Hos.setAddress(params.get("address"));
			Hos.setDistrict(params.get("district"));
			Hos.setMdname(params.get("mdname"));
			Hos.setMdno(params.get("mdno"));

			HRegisterService.saveHospitalRegister(Hos);
			return "redirect:/hcontent";
		} else {
			model.addAttribute("error", "User not found");
			return "heditprofile";
		}
	}

	@RequestMapping(value = "hrequest", method = RequestMethod.GET)
	public String hrequest() {
		return "hrequest";
	}

	@RequestMapping(value = "hsaverequest", method = RequestMethod.POST)
	public String saveHRequest(@RequestParam int hospitalId, @RequestParam int bloodbankId,
			@RequestParam String bloodgroup, @RequestParam String rh, @RequestParam int requiredno,
			@RequestParam String date, Model model) {
		HRequest hRequest = new HRequest();
		hRequest.setHospitalId(hospitalId);
		hRequest.setBloodbankId(bloodbankId);
		hRequest.setBloodgroup(bloodgroup);
		hRequest.setRh(rh);
		hRequest.setRequiredno(requiredno);
		hRequest.setDate(date);

		HRequest savedHRequest = hRequestService.saveHRequest(hRequest);
		if (savedHRequest != null) {
			return "redirect:/hcontent";
		} else {
			return "hrequest";
		}
	}

	@RequestMapping(value = "hreserve", method = RequestMethod.GET)
	public String hreserve(HttpServletRequest request) {
	    List<String> allBloodGroups = Arrays.asList("A +Ve", "A -Ve", "B +Ve", "B -Ve", "AB +Ve", "AB -Ve", "O +Ve", "O -Ve");

	    List<bloodgroupcount> bloodCounts = Bgservice.getAll();

	    List<bloodgroupcount> finalBloodCounts = new ArrayList<>();

	    // Loop through all blood groups and check if there's a matching count
	    for (String bloodGroup : allBloodGroups) {
	        boolean found = false;
	        for (bloodgroupcount bgc : bloodCounts) {
	            String fullBloodGroup = bgc.getBloodgroup() + " " + bgc.getRh();
	            if (fullBloodGroup.equals(bloodGroup)) {
	                finalBloodCounts.add(bgc);
	                found = true;
	                break;
	            }
	        }
	        // If the blood group was not found, add it with a count of 0
	        if (!found) {
	            bloodgroupcount newBGC = new bloodgroupcount();
	            String[] parts = bloodGroup.split(" ");
	            newBGC.setBloodgroup(parts[0]);
	            newBGC.setRh(parts[1]);
	            newBGC.setCount(0);
	            finalBloodCounts.add(newBGC);
	        }
	    }

	    // Add the final list to the session
	    request.getSession().setAttribute("hreserveBloodCounts", finalBloodCounts);
	    return "hreserve";
	}
	
	@RequestMapping(value = "reserve", method = RequestMethod.POST)
	public String reserveBlood(
	        @RequestParam("hospital-id") String hospitalId,
	        @RequestParam("bloodbank-id") String bloodbankId,
	        @RequestParam("bloodgroup") String bloodGroup,
	        @RequestParam("RH") String rh,
	        @RequestParam("reservebags") int reserveBags,
	        @RequestParam("date") String date,
	        HttpServletRequest request) {

	    // Create the blood group identifier
	    String fullBloodGroup = bloodGroup + " " + rh;

	    // Fetch the current counts from the service
	    List<bloodgroupcount> bloodCounts = Bgservice.getAll();
	    for (bloodgroupcount bgc : bloodCounts) {
	        String currentBloodGroup = bgc.getBloodgroup() + " " + bgc.getRh();
	        if (currentBloodGroup.equals(fullBloodGroup)) {
	            int availableCount = bgc.getCount();
	            int issuedCount = bgc.getIssuedBags(); // Get the current issued bags count

	            // Check if enough bags are available
	            if (availableCount >= reserveBags) {
	                // Update the available count and issued bags count
	                bgc.setCount(availableCount - reserveBags);
	                bgc.setIssuedBags(issuedCount + reserveBags); // Update issued bags

	                // Save the updated blood group count in the database
	                Bgservice.update(bgc); // Implement this method in your service

	                // Optionally save reservation details in another table if needed
	                request.getSession().setAttribute("hreserveBloodCounts", bloodCounts);
	            } else {
	                // Handle case when not enough bags are available
	                request.setAttribute("error", "Not enough bags available for reservation. Available: " + availableCount + ", Requested: " + reserveBags);
	                return "hreserve"; // Redirect back to the reservation page with error message
	            }
	            break;
	        }
	    }

	    // Refresh the session attribute to reflect updated counts
	    request.getSession().setAttribute("hreserveBloodCounts", bloodCounts);
	    return "redirect:hreserve"; // Redirect to the reservation page to show updated counts
	}

	
	@RequestMapping(value = "stockindex", method = RequestMethod.GET)
	public String stockindex() {
		return "stockindex";
	}

	@RequestMapping(value = "stockheader", method = RequestMethod.GET)
	public String stockheader() {
		return "stockheader";
	}

	@RequestMapping(value = "stockcontent", method = RequestMethod.GET)
	public String stockcontent() {
		return "stockcontent";
	}

	@RequestMapping(value = "stockregister", method = RequestMethod.GET)
	public String stockregister() {
		return "stockregister";
	}

	@RequestMapping(value = "savestock", method = RequestMethod.POST)
	public String saveStockRegister(@RequestParam String userid, @RequestParam int bloodbankId,
			@RequestParam String name, @RequestParam String dob, @RequestParam String phoneNo, Model model) {
		StockRegister stockRegister = new StockRegister();
		stockRegister.setUserid(userid);
		stockRegister.setBloodbankId(bloodbankId);
		stockRegister.setName(name);
		stockRegister.setDob(dob);
		stockRegister.setPhoneNo(phoneNo);

		StockRegister savedStockRegister = stockRegisterService.saveStockRegister(stockRegister);
		if (savedStockRegister != null) {
			return "redirect:/stockcontent";
		} else {
			return "stockregister";
		}
	}

	@RequestMapping(value = "sedit", method = RequestMethod.GET)
	public String sedit() {
		return "sedit";
	}

	@RequestMapping(value = "sedit", method = RequestMethod.POST)
	public String seditProfile(@RequestParam("userid") String userId, Model model) {
		StockRegister Stock = stockRegisterService.findByUserId(userId);

		if (Stock != null) {
			model.addAttribute("Stock", Stock);
			return "seditprofile";
		} else {
			model.addAttribute("error", "User not found");
			return "sedit";
		}
	}

	@RequestMapping(value = "seditprofile", method = RequestMethod.POST)
	public String supdateprofile(@RequestParam Map<String, String> params, Model model) {
		String userId = params.get("userid");
		StockRegister Stock = stockRegisterService.findByUserId(userId);

		if (Stock != null) {
			Stock.setBloodbankId(Integer.parseInt(params.get("bloodbankId")));
			Stock.setName(params.get("name"));
			Stock.setDob(params.get("dob"));
			Stock.setPhoneNo(params.get("phoneNo"));

			stockRegisterService.saveStockRegister(Stock);
			return "redirect:/stockcontent";
		} else {
			model.addAttribute("error", "User not found");
			return "seditprofile";
		}
	}

	@RequestMapping(value = "bloodbag", method = RequestMethod.GET)
	public String bloodbag() {
		return "bloodbag";
	}

	@RequestMapping(value = "savebloodbag", method = RequestMethod.POST)
	public String saveBloodBag(@RequestParam int bloodbankid, @RequestParam String donorid,
			@RequestParam String bloodgroup, @RequestParam String rh, @RequestParam String hb, @RequestParam String hiv,
			@RequestParam String hsbag, @RequestParam String hcv, @RequestParam String vdrl,
			@RequestParam String expirydate, @RequestParam String mpmf, @RequestParam String bp,
			@RequestParam String status) {
		bloodbag bloodBag = new bloodbag();

		bloodBag.setBloodbankid(bloodbankid);
		bloodBag.setDonorid(donorid);
		bloodBag.setBloodgroup(bloodgroup);
		bloodBag.setRh(rh);
		bloodBag.setHb(hb);
		bloodBag.setHiv(hiv);
		bloodBag.setHsbag(hsbag);
		bloodBag.setHcv(hcv);
		bloodBag.setVdrl(vdrl);
		bloodBag.setExpirydate(expirydate);
		bloodBag.setMpmf(mpmf);
		bloodBag.setBp(bp);
		bloodBag.setStatus(status);

		bloodbag savedBloodBag = bloodBagService.saveBloodBag(bloodBag);
		if (savedBloodBag != null) {

			return "redirect:/stockcontent";
		} else {
			return "addbloodbag";
		}
	}

	@RequestMapping(value = "shealth", method = RequestMethod.GET)
	public String shealth() {
		return "shealth";
	}

	@RequestMapping(value = "saveshealth", method = RequestMethod.POST)
	public String saveshealth(@RequestParam String donorid, @RequestParam String status) {
		SHealth shealth = new SHealth();
		shealth.setDonorid(donorid);
		shealth.setStatus(status);

		SHealth savedhealth = shealthservice.saveShealth(shealth);
		if (savedhealth != null) {
			return "redirect:/stockcontent";
		} else {
			return "shealth";
		}
	}

	@RequestMapping(value = "bagstatus", method = RequestMethod.GET)
	public String bagstatus() {
		return "bagstatus";
	}

	@RequestMapping(value = "savebag", method = RequestMethod.POST)
	public String savebag(@RequestParam int bagid, @RequestParam String status) {
		BagStatus bag = new BagStatus();
		bag.setBagid(bagid);
		bag.setStatus(status);

		BagStatus savedbag = bagstatusservice.savebagstatus(bag);
		if (savedbag != null) {
			return "redirect:/stockcontent";
		} else {
			return "bagstatus";
		}
	}

	@RequestMapping(value = "checkstock", method = RequestMethod.GET)
	public String checkstock(HttpServletRequest request) {
	    List<String> allBloodGroups = Arrays.asList("A +Ve", "A -Ve", "B +Ve", "B -Ve", "AB +Ve", "AB -Ve", "O +Ve", "O -Ve");

	    List<bloodgroupcount> bloodCounts = Bgservice.getAll();
	    List<bloodgroupcount> finalBloodCounts = new ArrayList<>();

	    // Loop through all blood groups and check if there's a matching count
	    for (String bloodGroup : allBloodGroups) {
	        boolean found = false;
	        for (bloodgroupcount bgc : bloodCounts) {
	            String fullBloodGroup = bgc.getBloodgroup() + " " + bgc.getRh();
	            if (fullBloodGroup.equals(bloodGroup)) {
	                finalBloodCounts.add(bgc);
	                found = true;
	                break;
	            }
	        }
	        // If the blood group was not found, add it with a count of 0
	        if (!found) {
	            bloodgroupcount newBGC = new bloodgroupcount();
	            String[] parts = bloodGroup.split(" ");
	            newBGC.setBloodgroup(parts[0]);
	            newBGC.setRh(parts[1]);
	            newBGC.setCount(0);
	            finalBloodCounts.add(newBGC);
	        }
	    }

	    // Add the final list to the session
	    request.getSession().setAttribute("list", finalBloodCounts);
	    return "checkstock";
	}



	@RequestMapping(value = "aboutus", method = RequestMethod.GET)
	public String aboutus() {
		return "aboutus";
	}

	@RequestMapping(value = "blooddonationfact", method = RequestMethod.GET)
	public String blooddonationfact() {
		return "blooddonationfact";
	}

	@RequestMapping(value = "helpus", method = RequestMethod.GET)
	public String helpus() {
		return "helpus";
	}

	@RequestMapping(value = "contactus", method = RequestMethod.POST)
	public String contactus(@RequestParam String name, @RequestParam String email, @RequestParam String subject,
			@RequestParam String message) {

		Helpus helpus = new Helpus();

		helpus.setName(name);
		helpus.setEmail(email);
		helpus.setSubject(subject);
		helpus.setMessage(message);

		Helpus savedhelp = helpusservice.savehelpus(helpus);
		if (savedhelp != null) {

			return "redirect:/index";
		} else {
			return "helpus";
		}
	}
}
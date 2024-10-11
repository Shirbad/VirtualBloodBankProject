package in.softronix.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.softronix.entity.bloodgroupcount;

import in.softronix.repository.BloodGroupCountRepository;

@Service
public class BloodGroupCountService {

	@Autowired
	BloodGroupCountRepository bloodGroupCountRepository;
	
	public bloodgroupcount findByBloodgroupAndRh(String bloodgroup, String rh) {
        return bloodGroupCountRepository.findByBloodgroupAndRh(bloodgroup, rh);
    }
	
	public bloodgroupcount saveBloodGroupCount(bloodgroupcount newBloodGroupCount) {
		return bloodGroupCountRepository.save(newBloodGroupCount);
	}
	
	 public List<bloodgroupcount> getAll()
	    {
	    	List<bloodgroupcount> list=new ArrayList<>();
	    	list=bloodGroupCountRepository.findAll();
	    	return list;
	    }
	 public void update(bloodgroupcount bgc) {
		    // Assuming you have a BloodGroupCountRepository that extends JpaRepository
		    bloodGroupCountRepository.save(bgc); // This will update the count in the database
		}

}

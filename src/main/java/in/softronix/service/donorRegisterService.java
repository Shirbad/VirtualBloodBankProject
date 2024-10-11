package in.softronix.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.softronix.entity.donorregister;
import in.softronix.repository.DonorRegisterRepository;

@Service
public class donorRegisterService {

	@Autowired
     DonorRegisterRepository donorRegisterRepository;

    public donorregister saveDonorRegister(donorregister donorRegister) {
        return donorRegisterRepository.save(donorRegister);
        
    }
    public donorregister findByUserId(String userId) {
        return donorRegisterRepository.findByUserid(userId);
    }
   
  
    public List<donorregister> getAll()
    {
    	List<donorregister> list=new ArrayList<>();
    	list=donorRegisterRepository.findAll();
    	return list;
    }
    
   

  
}

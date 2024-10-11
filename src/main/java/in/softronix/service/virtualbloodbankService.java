package in.softronix.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.softronix.entity.virtualbloodbank;
import in.softronix.repository.virtualbloodbankRepository;

@Service
public class virtualbloodbankService {
	
	@Autowired 
	virtualbloodbankRepository repo;
	
	public virtualbloodbank update(virtualbloodbank register)
	{
		virtualbloodbank v=new virtualbloodbank();
		v=repo.findById(register.getId()).orElse(null);
		v.setPassword(register.getPassword());
		return repo.save(v);
	}
	public virtualbloodbank findByUserId(String userid) {
		return repo.findByEmail(userid);
	}
	
	public virtualbloodbank savePro(virtualbloodbank register)
	{
		return repo.save(register);
	}
}

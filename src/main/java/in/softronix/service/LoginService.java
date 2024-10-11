package in.softronix.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.softronix.entity.Login;
import in.softronix.entity.virtualbloodbank;
import in.softronix.repository.LoginRepository;
import in.softronix.repository.virtualbloodbankRepository;

@Service
public class LoginService {

	@Autowired
	virtualbloodbankRepository loginRepository;
	
	public virtualbloodbank findByUser(String userid) 
	{
		return loginRepository.findByEmail(userid);
    }
	 public virtualbloodbank saveUser(virtualbloodbank user) {
	        return loginRepository.save(user);
	 }
}

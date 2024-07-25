package in.softronix.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.softronix.entity.virtualbloodbank;
import in.softronix.repository.virtualbloodbankRepository;

@Service
public class virtualbloodbankService {
	
	@Autowired 
	virtualbloodbankRepository repo;
	
	public virtualbloodbank savePro(virtualbloodbank register)
	{
		return repo.save(register);
	}
}

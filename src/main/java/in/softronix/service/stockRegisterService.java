package in.softronix.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.softronix.entity.StockRegister;
import in.softronix.entity.hospital;
import in.softronix.repository.stockRegisterRepository;



@Service
public class stockRegisterService {

	@Autowired
    private stockRegisterRepository stockRepository;

    public StockRegister saveStockRegister(StockRegister stockRegister) {
        return stockRepository.save(stockRegister);
    }
    
    public StockRegister findByUserId(String userId) {
        return stockRepository.findByUserid(userId);
    }
}

package in.softronix.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import in.softronix.entity.StockRegister;
import in.softronix.entity.hospital;

@Repository
public interface stockRegisterRepository extends JpaRepository<StockRegister, Integer> {
	StockRegister findByUserid(String userId);
}

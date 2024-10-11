package in.softronix.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import in.softronix.entity.dateofdonate;

@Repository
public interface dateofdonateRepository extends JpaRepository<dateofdonate, Integer> {
	List<dateofdonate> findByYourid(String yourid);
	
}

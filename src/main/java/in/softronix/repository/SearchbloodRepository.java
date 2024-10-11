package in.softronix.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import in.softronix.entity.donorregister;
import in.softronix.entity.searchblood;

@Repository
public interface SearchbloodRepository extends JpaRepository<searchblood, Integer> {
	
}

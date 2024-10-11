package in.softronix.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import in.softronix.entity.BagStatus;

@Repository
public interface BagStatusRepository extends JpaRepository<BagStatus, Integer> {

}

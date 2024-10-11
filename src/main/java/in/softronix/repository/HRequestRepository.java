package in.softronix.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import in.softronix.entity.HRequest;

@Repository
public interface HRequestRepository extends JpaRepository<HRequest, Integer> {

}

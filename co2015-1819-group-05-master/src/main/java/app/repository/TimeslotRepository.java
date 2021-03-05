package app.repository;

import org.springframework.data.repository.CrudRepository;

import app.domain.*;
import java.util.*;

public interface TimeslotRepository extends CrudRepository<Timeslot, Integer>{
	
Set<Timeslot> findByPosition(int pos);

Set<Timeslot> findByUser(User user);

}

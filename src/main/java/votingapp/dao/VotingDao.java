package votingapp.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import votingapp.model.Voting;

public interface VotingDao extends JpaRepository<Voting, Integer> {
}
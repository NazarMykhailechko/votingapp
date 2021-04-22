package votingapp.model;
import javax.persistence.*;

@Entity
@Table(name = "Questions")
@NamedQuery(name="Voting.Print",query = "Select v From Voting as v")
public class Voting {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Column(name = "question1", nullable = false)
    private String question1;
    @Column(name = "question2", nullable = false)
    private String question2;

    public Voting() {
    }

    public Voting(String question1, String question2) {
        this.question1 = question1;
        this.question2 = question2;
    }

    public long getId() {
        return id;
    }

    public String getQuestion1() {
        return question1;
    }

    public void setQuestion1(String question1) {
        this.question1 = question1;
    }

    public String getQuestion2() {
        return question2;
    }

    public void setQuestion2(String question2) {
        this.question2 = question2;
    }

    @Override
    public String toString() {
        return "Voting{" +
                "id=" + id +
                ", question1='" + question1 + '\'' +
                ", question2='" + question2 + '\'' +
                '}';
    }
}
package votingapp.model;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "Questions")
@NamedQuery(name="Voting.Print",query = "Select v From Voting as v")
public class Voting {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Column(name = "question1", nullable = false)
    private String question1;
    @Column(name = "pib")
    private String pib;
    @Column(name = "birth")
    private String birth;
/*    @Column(name = "entrydate")
    @CreationTimestamp
    private Date entrydate;*/

    public Voting() {
    }

    public Voting(long id, String question1, String pib, String birth) {
        this.id = id;
        this.question1 = question1;
        this.pib = pib;
        this.birth = birth;
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

    public String getPib() {
        return pib;
    }

    public void setPib(String pib) {
        this.pib = pib;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    @Override
    public String toString() {
        return "Voting{" +
                "id=" + id +
                ", question1='" + question1 + '\'' +
                ", pib='" + pib + '\'' +
                ", birth='" + birth + '\'' +
                '}';
    }
}
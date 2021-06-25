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
    @Column(name = "question2", nullable = false)
    private String question2;
    @Column(name = "question3", nullable = false)
    private String question3;
    @Column(name = "question4", nullable = false)
    private String question4;
//    @Column(name = "pib")
//    private String pib;
//    @Column(name = "birth")
//    private String birth;
/*    @Column(name = "entrydate")
    @CreationTimestamp
    private Date entrydate;*/

    public Voting() {
    }

    public Voting(long id, String question1, String question2, String question3, String question4) {
        this.id = id;
        this.question1 = question1;
        this.question2 = question2;
        this.question3 = question3;
        this.question4 = question4;
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

    public String getQuestion3() {
        return question3;
    }

    public void setQuestion3(String question3) {
        this.question3 = question3;
    }

    public String getQuestion4() {
        return question4;
    }

    public void setQuestion4(String question4) {
        this.question4 = question4;
    }

    @Override
    public String toString() {
        return "Voting{" +
                "id=" + id +
                ", question1='" + question1 + '\'' +
                ", question2='" + question2 + '\'' +
                ", question3='" + question3 + '\'' +
                ", question4='" + question4 + '\'' +
                '}';
    }
}
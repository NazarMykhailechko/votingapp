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

    @Column(name = "pib", nullable = false)
    private String pib;
    @Column(name = "division", nullable = false)
    private String division;
    @Column(name = "txt", nullable = false, columnDefinition = "text")
    private String txt;

//    @Column(name = "pib")
//    private String pib;
//    @Column(name = "birth")
//    private String birth;
/*    @Column(name = "entrydate")
    @CreationTimestamp
    private Date entrydate;*/

    public Voting() {
    }

    public Voting(long id, String pib, String division, String txt) {
        this.id = id;
        this.pib = pib;
        this.division = division;
        this.txt = txt;
    }

    public long getId() {
        return id;
    }

    public String getPib() {
        return pib;
    }

    public void setPib(String pib) {
        this.pib = pib;
    }

    public String getDivision() {
        return division;
    }

    public void setDivision(String division) {
        this.division = division;
    }

    public String getTxt() {
        return txt;
    }

    public void setTxt(String txt) {
        this.txt = txt;
    }

    @Override
    public String toString() {
        return "Voting{" +
                "id=" + id +
                ", pib='" + pib + '\'' +
                ", division='" + division + '\'' +
                ", txt='" + txt + '\'' +
                '}';
    }
}
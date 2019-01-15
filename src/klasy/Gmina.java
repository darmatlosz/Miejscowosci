package klasy;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity()
@Table(name = "gmina")
public class Gmina {

    @Id
    @SequenceGenerator(name = "identifier", sequenceName = "gmina_id_gminy_seq", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "identifier")
    @Column(name = "id_gminy")
    private Long id;

    @Column(name = "nazwa_gminy")
    private String nazwa;

    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn(name = "id_powiatu")
    private Powiat powiat;

    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "gmina")
    private List<Miejscowosc> miejscowosci = new ArrayList<>();

    public Gmina() {
    }

    public Gmina(Long id, String nazwa, Powiat powiat, List<Miejscowosc> miejscowosci) {
        this.id = id;
        this.nazwa = nazwa;
        this.powiat = powiat;
        this.miejscowosci = miejscowosci;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNazwa() {
        return nazwa;
    }

    public void setNazwa(String nazwa) {
        this.nazwa = nazwa;
    }

    public Powiat getPowiat() {
        return powiat;
    }

    public void setPowiat(Powiat powiat) {
        this.powiat = powiat;
    }

    public List<Miejscowosc> getMiejscowosci() {
        return miejscowosci;
    }

    public void setMiejscowosci(List<Miejscowosc> miejscowosci) {
        this.miejscowosci.clear();
        this.miejscowosci.addAll(miejscowosci);
    }



    @Override
    public String toString() {
        return "Gmina{" + "id=" + id + ", nazwa=" + nazwa + ", powiat=" + powiat + ", miejscowosci=" + miejscowosci + '}';
    }
}

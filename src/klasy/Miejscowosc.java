package klasy;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity()
@Table(name = "miejscowosc")
public class Miejscowosc {

    @Id
    @SequenceGenerator(name = "identifier", sequenceName = "miejscowosc_id_miejscowosci_seq", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "identifier")
    @Column(name = "id_miejscowosci")
    private Long id;

    @Column(name = "nazwa_miejscowosci")
    private String nazwa;

    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn(name = "id_gminy")
    Gmina gmina;

    public Miejscowosc() {
    }

    public Miejscowosc(Long id, String nazwa, Gmina gmina) {
        this.id = id;
        this.nazwa = nazwa;
        this.gmina = gmina;
    }

    public Long getId() {
        return this.id;
    }

    public String getNazwa() {
        return this.nazwa;
    }

    public void setId(Long id_miejscowosci) {
        this.id = id_miejscowosci;
    }

    public void setNazwa(String nazwa) {
        this.nazwa = nazwa;
    }

    public Gmina getGmina() {
        return gmina;
    }

    public void setGmina(Gmina gmina) {
        this.gmina = gmina;
    }

    @Override
    public String toString() {
        return "Miejscowosc{" + "id=" + id + ", nazwa=" + nazwa + '}';
    }

}

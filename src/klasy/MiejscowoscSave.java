/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
public class MiejscowoscSave {

    @Id
    @SequenceGenerator(name = "identifier", sequenceName = "miejscowosc_id_miejscowosci_seq", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "identifier")
    @Column(name = "id_miejscowosci")
    private Long id;

    @Column(name = "nazwa_miejscowosci")
    private String nazwa;

    @Column(name = "id_gminy")
    Long idGminy;

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

    public Long getIdGminy() {
        return idGminy;
    }

    public void setIdGminy(Long idGminy) {
        this.idGminy = idGminy;
    }

}

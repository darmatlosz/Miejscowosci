/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ProjektMiast;

import ProjektMiast.DAO.GminyDao;
import ProjektMiast.DAO.MiejscowoscDao;
import java.util.List;
import javafx.application.Application;
import javafx.beans.property.SimpleObjectProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.TableCell;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.control.cell.TextFieldTableCell;
import javafx.scene.layout.Pane;
import javafx.scene.layout.VBox;
import javafx.stage.Modality;
import javafx.stage.Stage;
import javafx.util.StringConverter;
import klasy.Gmina;
import klasy.Miejscowosc;
import klasy.MiejscowoscSave;
import klasy.Powiat;
import org.hibernate.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author darma
 */
public class ProjektMiast extends Application {

    @Override
    public void start(Stage primaryStage) {
        Button btn = new Button("Wyswietl Miejscowosci");
        btn.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent e) {
                wyswietlMiejscowosci(primaryStage);
            }
        });

        btn.setLayoutX(200.0);
        btn.setLayoutY(200.0);

        Button dodajMiejscowoscBtn = new Button();
        dodajMiejscowoscBtn.setLayoutX(200.0);
        dodajMiejscowoscBtn.setLayoutY(250.0);
        dodajMiejscowoscBtn.setText("Pokaż autora");
        dodajMiejscowoscBtn.setOnAction(e -> {

            pokazAlert("Daria Matłosz",
                    "IiE II rok",
                    Alert.AlertType.INFORMATION);

        });

        Pane root = new Pane();
        root.getChildren().add(btn);
        root.getChildren().add(dodajMiejscowoscBtn);

        Scene scene = new Scene(root, 600, 500);

        String tytul = "Miejscowosci-Daria Matłosz";

        primaryStage.setTitle(tytul);
        primaryStage.setScene(scene);
        primaryStage.show();
    }

    private void wyswietlMiejscowosci(Stage primaryStage) {
        final Stage dialog = new Stage();
        dialog.initModality(Modality.APPLICATION_MODAL);
        dialog.initOwner(primaryStage);
        dialog.setTitle("Miejscowości");

        VBox vBox = new VBox(5);
        TableView<Miejscowosc> tabelaMiejscowosci = dodajTabeleMiejscowości();

        vBox.getChildren().addAll(tabelaMiejscowosci);

        final TextField nazwaMiejscowości = new TextField();
        nazwaMiejscowości.setPromptText("Nazwa Miejscowości");
        nazwaMiejscowości.setMaxWidth(300);

        ComboBox<Gmina> gminy = new ComboBox<Gmina>();
        GminyDao gminyDao = new GminyDao();
        ObservableList<Gmina> gm = gminyDao.pobierzGminy();
        gminy.setPromptText("Gmina");
        gminy.setItems(FXCollections.observableArrayList(gm));
        gminy.setConverter(new StringConverter<Gmina>() {
            @Override
            public String toString(Gmina gmina) {
                return gmina == null ? "" : gmina.getNazwa();
            }

            @Override
            public Gmina fromString(String s) {
                return null;
            }
        });

        Button dodajMiejscowosc = new Button("ADD");
        dodajMiejscowosc.setOnAction((event) -> {
            if (!nazwaMiejscowości.getText().isEmpty() && gminy.getValue() != null) {
                MiejscowoscDao miejscowoscDao = new MiejscowoscDao();
                MiejscowoscSave miejscowosc = new MiejscowoscSave();
                miejscowosc.setNazwa(nazwaMiejscowości.getText());
                miejscowosc.setIdGminy(gminy.getValue().getId());
                Long id = miejscowoscDao.dodajMiejscowosc(miejscowosc);
                tabelaMiejscowosci.getItems().add(new Miejscowosc(id, nazwaMiejscowości.getText(), gminy.getValue()));
                tabelaMiejscowosci.sort();
                nazwaMiejscowości.clear();
                gminy.getSelectionModel().clearSelection();
            } else {
                pokazAlert("Nie uzupełniono wymaganych pól", "pola nazwa miejscowosci i gmina są wymagane", Alert.AlertType.WARNING);
            }
        });
        vBox.getChildren().addAll(nazwaMiejscowości, gminy, dodajMiejscowosc);

        Scene scene = new Scene(vBox);

        dialog.setScene(scene);
        dialog.show();
    }

    private void pokazAlert(String naglowek, String wiadomość, Alert.AlertType alertType) {
        Alert errorAlert = new Alert(alertType);
        errorAlert.setHeaderText(naglowek);
        errorAlert.setContentText(wiadomość);
        errorAlert.showAndWait();
    }

    private TableView<Miejscowosc> dodajTabeleMiejscowości() {
        TableView<Miejscowosc> tabelaMiejscowosci = new TableView<>();

        TableColumn<Miejscowosc, Integer> idColumn = new TableColumn<>("ID");
        idColumn.setMinWidth(100);
        idColumn.setCellValueFactory(new PropertyValueFactory<>("id"));
        idColumn.setEditable(false);

        TableColumn<Miejscowosc, String> nazwaMiejscowosciColumn = new TableColumn<>("Nazwa");
        nazwaMiejscowosciColumn.setEditable(true);
        nazwaMiejscowosciColumn.setMinWidth(200);
        nazwaMiejscowosciColumn.setCellValueFactory(new PropertyValueFactory<>("nazwa"));
        nazwaMiejscowosciColumn.setCellFactory(TextFieldTableCell.forTableColumn());
        nazwaMiejscowosciColumn.setOnEditCommit(event -> {
            Miejscowosc miejscowosc = ((Miejscowosc) event.getTableView().getItems().get(event.getTablePosition().getRow()));
            miejscowosc.setNazwa(event.getNewValue());

            MiejscowoscDao miejscowoscDao = new MiejscowoscDao();
            miejscowoscDao.aktualizujMiejscowosc(miejscowosc);
        });

        TableColumn<Miejscowosc, String> gminaColumn = new TableColumn<>("Gmina");
        gminaColumn.setMinWidth(200);
        gminaColumn.setCellValueFactory(miejscowosc -> {
            SimpleObjectProperty property = new SimpleObjectProperty();
            property.setValue(miejscowosc.getValue().getGmina() != null ? miejscowosc.getValue().getGmina().getNazwa() : "");
            return property;

        });

        TableColumn<Miejscowosc, String> powiatColumn = new TableColumn<>("Powiat");
        powiatColumn.setMinWidth(200);
        powiatColumn.setCellValueFactory(gminaModel -> {
            SimpleObjectProperty property = new SimpleObjectProperty();
            property.setValue(gminaModel.getValue().getGmina() != null && gminaModel.getValue().getGmina().getPowiat() != null ? gminaModel.getValue().getGmina().getPowiat().getNazwa() : "");
            return property;

        });

        TableColumn<Miejscowosc, Void> colBtn = new TableColumn("Akcja");
        colBtn.setMinWidth(100);
        colBtn.setCellFactory((param) -> {
            final TableCell<Miejscowosc, Void> cell = new TableCell<Miejscowosc, Void>() {
                private final Button btn = new Button("Usuń");

                {
                    btn.setOnAction((ActionEvent event) -> {
                        Miejscowosc dane = getTableView().getItems().get(getIndex());

                        new MiejscowoscDao().usunMiejscowosc(dane.getId());
                        tabelaMiejscowosci.getItems().remove(dane);
                    });
                }

                @Override
                public void updateItem(Void item, boolean empty) {
                    super.updateItem(item, empty);
                    if (empty) {
                        setGraphic(null);
                    } else {
                        setGraphic(btn);
                    }
                }
            };
            return cell;
        });

        tabelaMiejscowosci.setEditable(true);
        tabelaMiejscowosci.setItems(new MiejscowoscDao().pobierzMiejscowości());
        tabelaMiejscowosci.getColumns().addAll(idColumn, nazwaMiejscowosciColumn, gminaColumn, powiatColumn, colBtn);
        tabelaMiejscowosci.getSortOrder().add(idColumn);
        tabelaMiejscowosci.setMaxSize(800, 500);
        return tabelaMiejscowosci;
    }

    public Powiat getPowiatById(int id_powiatu) {
        Session session = null;
        Powiat powiat = null;
        try {
            session = getSessionFactory().openSession();
            powiat
                    = (Powiat) session.load(Powiat.class,
                            id_powiatu);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return powiat;
    }

    public Miejscowosc getMiejscowoscById(int id_miejscowosci) {
        Session session = null;
        Miejscowosc miejscowosc = null;
        try {
            session = getSessionFactory().openSession();
            miejscowosc
                    = (Miejscowosc) session.load(Miejscowosc.class,
                            id_miejscowosci);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return miejscowosc;
    }

    public Gmina getGminaById(int id_gminy) {
        Session session = null;
        Gmina gmina = null;
        try {
            session = getSessionFactory().openSession();
            gmina
                    = (Gmina) session.load(Gmina.class,
                            id_gminy);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return gmina;
    }

    public List<Gmina> getGminaByPowiatId(Long id_powiatu) {

        Session session = null;
        List<Gmina> list = null;
        try {
            session = getSessionFactory().openSession();
            ///  gmina = (Gmina) session.byNaturalId(Gmina.class).using("id_powiatu",id_powiatu).load();
            //list = session.createCriteria("powiat").add(Restrictions.eq("id_powiatu",id_powiatu)).list();
            Query q = session.createQuery("select g from Gmina g where g.powiat.id = :idPowiatu");
            q.setParameter("idPowiatu", id_powiatu);
            list = q.list();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (session != null && session.isOpen()) {
                session.close();
            }
        }
        return list;
    }

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        launch(args);
    }

    private SessionFactory getSessionFactory() {
        Configuration cfg = new Configuration().configure();
        cfg.setProperty("hibernate.show_sql", "true");
        cfg.setProperty("hibernate.dialect", "org.hibernate.dialect.PostgreSQLDialect");
        SessionFactory sessions = cfg.buildSessionFactory();
        return sessions;
    }

}

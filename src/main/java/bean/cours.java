package bean;




public class cours {
    private int id;
    private String intitule,intervenant,duree;
    private String dates;

    public cours(int id, String intitule, String intervenant, String duree, String dates) {
        this.id = id;
        this.intitule = intitule;
        this.intervenant = intervenant;
        this.duree = duree;
        this.dates = dates;
    }

    public cours(String intitule, String intervenant, String duree, String dates) {
        this.intitule = intitule;
        this.intervenant = intervenant;
        this.duree = duree;
        this.dates = dates;
    }

    public cours() {

    }

    public cours(String intitule, String intervenant, String duree) {
        this.intitule = intitule;
        this.intervenant = intervenant;
        this.duree = duree;
    }

    public cours(String dates) {
        this.dates = dates;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getIntitule() {
        return intitule;
    }

    public void setIntitule(String intitule) {
        this.intitule = intitule;
    }

    public String getIntervenant() {
        return intervenant;
    }

    public void setIntervenant(String intervenant) {
        this.intervenant = intervenant;
    }

    public String getDuree() {
        return duree;
    }

    public void setDuree(String duree) {
        this.duree = duree;
    }

    public String getDates() {
        return dates;
    }

    public void setDates(String dates) {
        this.dates = dates;
    }

}

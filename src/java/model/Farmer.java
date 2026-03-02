package model;

public class Farmer {

    private int id;
    private String name;
    private String mobile;
    private String village;

    public Farmer(int id, String name, String mobile, String village) {
        this.id = id;
        this.name = name;
        this.mobile = mobile;
        this.village = village;
    }

    public int getId() { return id; }
    public String getName() { return name; }
    public String getMobile() { return mobile; }
    public String getVillage() { return village; }
    
    
    public void setName(String name) {
        this.name = name;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }
}

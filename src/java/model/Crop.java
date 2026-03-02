package model;
public class Crop {
    private String name;
    private String season;
    private String fertilizer;
    private String waterRequirement;

    public Crop(String name, String season, String fertilizer, String waterRequirement) {
        this.name = name;
        this.season = season;
        this.fertilizer = fertilizer;
        this.waterRequirement = waterRequirement;
    }

    public String getName() { return name; }
    public String getSeason() { return season; }
    public String getFertilizer() { return fertilizer; }
    public String getWaterRequirement() { return waterRequirement; }
}

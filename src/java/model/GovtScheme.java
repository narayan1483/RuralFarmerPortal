package model;

public class GovtScheme {

    private String name;
    private String benefit;
    private String eligibility;
    private String applyMode;
    private String link;   // new field

    // Updated Constructor
    public GovtScheme(String name, String benefit,
                      String eligibility, String applyMode,
                      String link) {
        this.name = name;
        this.benefit = benefit;
        this.eligibility = eligibility;
        this.applyMode = applyMode;
        this.link = link;
    }

    public String getName() {
        return name;
    }

    public String getBenefit() {
        return benefit;
    }

    public String getEligibility() {
        return eligibility;
    }

    public String getApplyMode() {
        return applyMode;
    }

    public String getLink() {
        return link;
    }
}
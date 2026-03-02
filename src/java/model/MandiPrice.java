package model;

import java.sql.Date;

public class MandiPrice {
    private int id;
    private String cropName;
    private String market;
    private int price;
    private Date priceDate;

    public MandiPrice(int id, String cropName, String market, int price, Date priceDate) {
        this.id = id;
        this.cropName = cropName;
        this.market = market;
        this.price = price;
        this.priceDate = priceDate;
    }

    public int getId() { return id; }
    public String getCropName() { return cropName; }
    public String getMarket() { return market; }
    public int getPrice() { return price; }
    public Date getPriceDate() { return priceDate; }
}

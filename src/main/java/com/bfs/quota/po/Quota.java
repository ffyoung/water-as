package com.bfs.quota.po;

/**
 * - - - - - - - - - - -
 * |    By   R o c k   |
 * - - - - - - - - - - -
 * Created by rock on 2018-09-17
 */
public class Quota {

    private Long id;

    /**
     * 生活用水
     */
    private Double domesticWater;

    /**
     * 农业用水
     */
    private Double agriculturalWater;

    /**
     * 生态用水
     */
    private Double ecologicalWater;

    /**
     * 工业用水
     */
    private Double industrialWater;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Double getDomesticWater() {
        return domesticWater;
    }

    public void setDomesticWater(Double domesticWater) {
        this.domesticWater = domesticWater;
    }

    public Double getAgriculturalWater() {
        return agriculturalWater;
    }

    public void setAgriculturalWater(Double agriculturalWater) {
        this.agriculturalWater = agriculturalWater;
    }

    public Double getEcologicalWater() {
        return ecologicalWater;
    }

    public void setEcologicalWater(Double ecologicalWater) {
        this.ecologicalWater = ecologicalWater;
    }

    public Double getIndustrialWater() {
        return industrialWater;
    }

    public void setIndustrialWater(Double industrialWater) {
        this.industrialWater = industrialWater;
    }

    @Override
    public String toString() {
        return "Quota{" +
                "id=" + id +
                ", domesticWater=" + domesticWater +
                ", agriculturalWater=" + agriculturalWater +
                ", ecologicalWater=" + ecologicalWater +
                ", industrialWater=" + industrialWater +
                '}';
    }
}


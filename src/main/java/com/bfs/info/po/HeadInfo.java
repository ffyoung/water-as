package com.bfs.info.po;

/**
 * - - - - - - - - - - -
 * |    By   R o c k   |
 * - - - - - - - - - - -
 * Created by rock on 2018-09-15
 */
public class HeadInfo {


    private Long id;
    private String hzName;
    private String tp;
    private String land;
    private String waterEco;
    private Integer vid;
    private Integer wid;

    @Override
    public String toString() {
        return "HeadInfo{" +
                "id=" + id +
                ", hzName='" + hzName + '\'' +
                ", tp='" + tp + '\'' +
                ", land='" + land + '\'' +
                ", waterEco='" + waterEco + '\'' +
                ", vid=" + vid +
                ", wid=" + wid +
                '}';
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getHzName() {
        return hzName;
    }

    public void setHzName(String hzName) {
        this.hzName = hzName;
    }

    public String getTp() {
        return tp;
    }

    public void setTp(String tp) {
        this.tp = tp;
    }

    public String getLand() {
        return land;
    }

    public void setLand(String land) {
        this.land = land;
    }

    public String getWaterEco() {
        return waterEco;
    }

    public void setWaterEco(String waterEco) {
        this.waterEco = waterEco;
    }

    public Integer getVid() {
        return vid;
    }

    public void setVid(Integer vid) {
        this.vid = vid;
    }

    public Integer getWid() {
        return wid;
    }

    public void setWid(Integer wid) {
        this.wid = wid;
    }
}

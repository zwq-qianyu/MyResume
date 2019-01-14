package entity;

import java.util.Date;

public class prize {
    // 获奖时间
    private Date time;
    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }


    // 所获奖
    private String prize;
    public String getPrize() {
        return prize;
    }

    public void setPrize(String prize) {
        this.prize = prize;
    }


    // 是否为国际级别  是国际级的为1，否则为0
    private int internal;
    public int getInternal() {
        return internal;
    }

    public void setInternal(int internal) {
        this.internal = internal;
    }


    // 是否为全国级别  是国家级的为1，否则为0
    private int nation;
    public int getNation() {
        return nation;
    }

    public void setNation(int nation) {
        this.nation = nation;
    }


    // 是否为省级  是省级的为1，否则为0
    private int provincial;
    public int getProvincial() {
        return provincial;
    }

    public void setProvincial(int provincial) {
        this.provincial = provincial;
    }


    // 是否为校级  是校级的为1，否则为0
    private int school;
    public int getSchool() {
        return school;
    }

    public void setSchool(int school) {
        this.school = school;
    }
}

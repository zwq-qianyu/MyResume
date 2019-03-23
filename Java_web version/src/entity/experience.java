package entity;

public class experience {
    // 性质，1是公司实习项目，2是个人项目
    private int nature;
    public int getNature() {
        return nature;
    }

    public void setNature(int nature) {
        this.nature = nature;
    }


    // 企业商标
    private String enter_icon;
    public String getEnter_icon() {
        return enter_icon;
    }

    public void setEnter_icon(String enter_icon) {
        this.enter_icon = enter_icon;
    }


    // 企业名
    private String enter_name;
    public String getEnter_name() {
        return enter_name;
    }

    public void setEnter_name(String enter_name) {
        this.enter_name = enter_name;
    }


    // 项目名
    private String project_name;
    public String getProject_name() {
        return project_name;
    }

    public void setProject_name(String project_name) {
        this.project_name = project_name;
    }


    //  项目详情
    private String project_description;
    public String getProject_description() {
        return project_description;
    }

    public void setProject_description(String project_description) {
        this.project_description = project_description;
    }


    // 项目相关图片
    private String project_imgs;
    public String getProject_imgs() {
        return project_imgs;
    }

    public void setProject_imgs(String project_imgs) {
        this.project_imgs = project_imgs;
    }
}

package entity;

public class job_score {
    // 1、应聘岗位
    private String[] job;
    public String[] getJob() {
        return job;
    }

    public void setJob(String[] job) {
        this.job = job;
    }


    // 2、技能点
    private String scoreSkill;
    public String getScoreSkill() {
        return scoreSkill;
    }

    public void setScoreSkill(String scoreSkill) {
        this.scoreSkill = scoreSkill;
    }


    // 3、技能得分【与技能点一一对应】
    private int score;
    public int getScore(String scoreSkill) {
        // ...
        return score;
    }

    public void setScore(String scoreSkill, int score) {
        this.score = score;
        // ...
    }
}

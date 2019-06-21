package bean;

public class Match {
    private int match_id;
    private String match_name;
    private int match_now;
    private int Match_max;

    public int getMatch_id() {
        return match_id;
    }

    public void setMatch_id(int match_id) {
        this.match_id = match_id;
    }

    public String getMatch_name() {
        return match_name;
    }

    public void setMatch_name(String match_name) {
        this.match_name = match_name;
    }

    public int getMatch_now() {
        return match_now;
    }

    public void setMatch_now(int match_now) {
        this.match_now = match_now;
    }

    public int getMatch_max() {
        return Match_max;
    }

    public void setMatch_max(int match_max) {
        Match_max = match_max;
    }
}

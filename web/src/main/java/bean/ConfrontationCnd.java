package bean;

public class ConfrontationCnd {
    private int confrontation_id;
    private String match_name;
    private String player_1_name;
    private String player_2_name;
    private int  player_1_votes;
    private int  player_2_votes;
    private int  player_1_id;
    private int  player_2_id;
    private int state;

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }
    public int getPlayer_1_id() {
        return player_1_id;
    }

    public void setPlayer_1_id(int player_1_id) {
        this.player_1_id = player_1_id;
    }

    public int getPlayer_2_id() {
        return player_2_id;
    }

    public void setPlayer_2_id(int player_2_id) {
        this.player_2_id = player_2_id;
    }

    public int getPlayer_1_votes() {
        return player_1_votes;
    }

    public void setPlayer_1_votes(int player_1_votes) {
        this.player_1_votes = player_1_votes;
    }

    public int getPlayer_2_votes() {
        return player_2_votes;
    }

    public void setPlayer_2_votes(int player_2_votes) {
        this.player_2_votes = player_2_votes;
    }

    public int getConfrontation_id() {
        return confrontation_id;
    }

    public void setConfrontation_id(int confrontation_id) {
        this.confrontation_id = confrontation_id;
    }

    public String getMatch_name() {
        return match_name;
    }

    public void setMatch_name(String match_name) {
        this.match_name = match_name;
    }

    public String getPlayer_1_name() {
        return player_1_name;
    }

    public void setPlayer_1_name(String player_1_name) {
        this.player_1_name = player_1_name;
    }

    public String getPlayer_2_name() {
        return player_2_name;
    }

    public void setPlayer_2_name(String player_2_name) {
        this.player_2_name = player_2_name;
    }
}


package bean;

public class Confrontation {
    private int confrontation_id;
    private int  match_id;
    private int  player_1_id;
    private int player_1_votes;
    private int  player_2_id;
    private int player_2_votes;
    private int state;

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public int getConfrontation_id() {
        return confrontation_id;
    }

    public void setConfrontation_id(int confrontation_id) {
        this.confrontation_id = confrontation_id;
    }

    public int getMatch_id() {
        return match_id;
    }

    public void setMatch_id(int match_id) {
        this.match_id = match_id;
    }

    public int getPlayer_1_id() {
        return player_1_id;
    }

    public void setPlayer_1_id(int player_1_id) {
        this.player_1_id = player_1_id;
    }

    public int getPlayer_1_votes() {
        return player_1_votes;
    }

    public void setPlayer_1_votes(int player_1_votes) {
        this.player_1_votes = player_1_votes;
    }

    public int getPlayer_2_id() {
        return player_2_id;
    }

    public void setPlayer_2_id(int player_2_id) {
        this.player_2_id = player_2_id;
    }

    public int getPlayer_2_votes() {
        return player_2_votes;
    }

    public void setPlayer_2_votes(int player_2_votes) {
        this.player_2_votes = player_2_votes;
    }
}

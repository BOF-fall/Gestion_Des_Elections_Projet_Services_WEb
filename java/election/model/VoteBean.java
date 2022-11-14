package election.model;

import java.io.Serializable;

public class VoteBean implements Serializable{

	private static final long serialVersionUID = 1L;
	private String electeur;
	private String candidat;
	public String getElecteur() {
		return electeur;
	}
	public void setElecteur(String electeur) {
		this.electeur = electeur;
	}
	public String getCandidat() {
		return candidat;
	}
	public void setCandidat(String candidat) {
		this.candidat = candidat;
	}
	

}

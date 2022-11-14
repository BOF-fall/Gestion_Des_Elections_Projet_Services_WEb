package election.model;

import java.io.Serializable;

/**
 * JavaBean class used in jsp action tags.
 * @author Baye Ousseynou Fall
 */
public class ElecteurBean implements Serializable {
	private static final long serialVersionUID = 1L;
	 private String prenom;
	 private String nom;
	 private String datenaiss;
	 private String cni;
	 private String region;
	 private String dep;
	 private String com;
	 private String lieuvote;
	 private String bvote;
	 private String password;
	 
     public String getPrenom() {
			return prenom;
		}
		public void setPrenom(String prenom) {
			this.prenom = prenom;
		}
		public String getNom() {
			return nom;
		}
		public void setNom(String nom) {
			this.nom = nom;
		}
		public String getDatenaiss() {
			return datenaiss;
		}
		public void setDatenaiss(String datenaiss) {
			this.datenaiss = datenaiss;
		}
		public String getCni() {
			return cni;
		}
		public void setCni(String cni) {
			this.cni = cni;
		}
		public String getRegion() {
			return region;
		}
		public void setRegion(String region) {
			this.region = region;
		}
		public String getDep() {
			return dep;
		}
		public void setDep(String dep) {
			this.dep = dep;
		}
		public String getCom() {
			return com;
		}
		public void setCom(String com) {
			this.com = com;
		}
		public String getLieuvote() {
			return lieuvote;
		}
		public void setLieuvote(String lieuvote) {
			this.lieuvote = lieuvote;
		}
		public String getBvote() {
			return bvote;
		}
		public void setBvote(String bvote) {
			this.bvote = bvote;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}

}

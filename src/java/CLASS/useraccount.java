package CLASS;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


/**
 *
 * @author USER
 */
public class useraccount {
    public static final String GENDER_MALE="M";
     public static final String GENDER_FEMALE="F";
     private String userName;
       private String gender;
         private String password;
          private int idsell;
       private int admin;
         public useraccount(){
         }

    public useraccount(String userName, String password) {
        this.userName = userName;
        this.password = password;
    }

    public useraccount(String userName, String gender, String password) {
        this.userName = userName;
        this.gender = gender;
        this.password = password;
    }
 public useraccount(useraccount us) {
        this.userName = us.userName;
        this.gender = us.gender;
        this.password = us.password;
    }

    public useraccount(String userName, String gender, String password, int idsell, int admin) {
        this.userName = userName;
        this.gender = gender;
        this.password = password;
        this.idsell = idsell;
        this.admin = admin;
    }

    public useraccount(int idsell, int admin) {
        this.idsell = idsell;
        this.admin = admin;
    }
 
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getIdsell() {
        return idsell;
    }

    public void setIdsell(int idsell) {
        this.idsell = idsell;
    }

    public int getAdmin() {
        return admin;
    }

    public void setAdmin(int admin) {
        this.admin = admin;
    }

    @Override
    public String toString() {
        return "useraccount{" + "userName=" + userName + ", gender=" + gender + ", password=" + password + ", idsell=" + idsell + ", admin=" + admin + '}';
    }
         
}

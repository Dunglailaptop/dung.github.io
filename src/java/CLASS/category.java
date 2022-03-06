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
public class category {
     private String cateid;
    private String cname;
 public category(){
 }
    public category(String cateid, String cname) {
        this.cateid = cateid;
        this.cname = cname;
    }

    public String getCateid() {
        return cateid;
    }

    public void setCateid(String cateid) {
        this.cateid = cateid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    @Override
    public String toString() {
        return "category{" + "cateid=" + cateid + ", cname=" + cname + '}';
    }
    
}

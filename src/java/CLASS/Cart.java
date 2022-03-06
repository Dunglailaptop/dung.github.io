/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CLASS;

/**
 *
 * @author USER
 */
public class Cart extends Product{
    private int Quatity;
     public Cart() {
        
    }
    public Cart(int Quatity) {
        this.Quatity = Quatity;
    }

    public int getQuatity() {
        return Quatity;
    }

    public void setQuatity(int Quatity) {
        this.Quatity = Quatity;
    }
    
}

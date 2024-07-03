/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Vivek Singh
 */
import java.io.Serializable;

public class Donation
  implements Serializable
{
  private int Amount;
  private String Name;
  private String Email;
  


public Donation()
  {
    Amount = 0;
    Name = "";
    Email = "";

  }
  public int getAmount()
  {
    return Amount;
  }
  
  public void setAmount(int Amount) {
    this.Amount = Amount;
  }
  

  public String getName()
  {
    return Name;
  }
  
  public void setName(String Name) {
    this.Name = Name;
  }
  
  public String getEmail()
  {
    return Email;
  }
  
  public void setEmail(String Email) {
    this.Email = Email;
  }
}

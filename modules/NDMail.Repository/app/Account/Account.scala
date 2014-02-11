package Account

import auth.Account

/**
 * Created by Nikola on 2/5/14.
 */
class Accounts extends IAccount{

  def authenticate(email: String, password: String): Option[Account] = {
    //findByEmail(email).filter { account => password.equals(account.password) }
    val result = None
    result
  }


  def findByEmail(email: String): Option[Account] = {
    /*
    database withSession { implicit session =>
      val q1 = for (u <- Account if u.email === email) yield u
      q1.list.headOption.asInstanceOf[Option[Account]]
    }
    */

    val result = None
    result
  }

  def findById(id: Int): Option[Account] = {
    /*
    database withSession { implicit session =>
      val q1 = for (u <- Account if u.id === id) yield u
      q1.list.headOption.asInstanceOf[Option[Account]]
    }
    */

    val result = None
    result
  }

  def findAll: Seq[Account] = {
    /*
    database withSession { implicit session =>
      val q1 = for (u <- Account) yield u
      q1.list
    }
    */

    val result = Nil
    result
  }

}

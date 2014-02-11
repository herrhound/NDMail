package Account

import auth.Account

/**
 * Created by Nikola on 2/5/14.
 */
trait IAccount {
  def authenticate(email: String, password: String): Option[Account]
  def findByEmail(email: String): Option[Account]
  def findById(id: Int): Option[Account]
  def findAll: Seq[Account]
}

package auth

/**
 * Created by Nikola on 1/16/14.
 */

import play.api.db.DB
import play.api.Play.current
import java.util.UUID

import scala.slick.driver.PostgresDriver.simple._
import scala.slick.direct.Mapper


  case class Account(userid: UUID, username: String, password: String, email: String, secretquestion: String, secretanswer: String, systemstatusid: Int)

/*
  object Accounts extends Table[Account]("auth.users") {
    lazy val database = Database.forDataSource(DB.getDataSource())

    def userid = column[UUID]("userid")
    def username = column[String]("username")
    def userpassword = column[String]("userpassword")
    def email = column[String]("email")
    def secretquestion = column[String]("secretquestion")
    def secretanswer = column[String]("secretanswer")
    def systemstatusid = column[Int]("systemstatusid")
    // Every table needs a * projection with the same type as the table's type parameter
    //def * = userid ~ username ~ userpassword ~ email ~ secretquestion ~ secretanswer ~ systemstatusid <> (Account.apply _, Account.unapply _)
    def * = userid ~ username ~ userpassword ~ email ~ secretquestion ~ secretanswer ~ systemstatusid


    def authenticate(email: String, password: String): Option[Account] = {
      findByEmail(email).filter { account => password.equals(account.password) }
    }

    def findByEmail(email: String): Option[Account] = {
      database withSession { implicit session =>
        val q1 = for (u <- Account if u.email === email) yield u
        q1.list.headOption.asInstanceOf[Option[Account]]
      }
    }

    def findById(id: Int): Option[Account] = {
      database withSession { implicit session =>
        val q1 = for (u <- Account if u.id === id) yield u
        q1.list.headOption.asInstanceOf[Option[Account]]
      }
    }

    def findAll: Seq[Account] = {
      database withSession { implicit session =>
        val q1 = for (u <- Account) yield u
        q1.list
      }
    }


}
    */

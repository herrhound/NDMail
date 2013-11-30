package basedal

import play.api.db._
import play.api.Play.current

import anorm._
import anorm.SqlParser._

object dal {

  def dbConnTest: String = {
    try{
      DB.withConnection { conn =>
        val success = "Success"
        success
      }
    }
    catch
      {
        case e: Exception => {
          val failed = e.getMessage
          failed
        }
      }
  }

  def getConnStr(msg: String) = msg

  def getLanguages(): List[dict.language] = {
    DB.withConnection { implicit connection =>
      val sql: SqlQuery = SQL("select * from dict.language")
      sql().map(row =>
        dict.language(row[Int]("languageid"),
          row[String]("name"),
          row[String]("description"),
          row[String]("code"))).toList
    }
  }

  def getLanguafeById(langId: Int): String = {
    val models: List[dict.language] = getLanguages()
    val maches: List[dict.language] = for(m <- models; if m.asInstanceOf[dict.language].languageid == langId ) yield m
    if(!maches.isEmpty)
      maches(0).asInstanceOf[dict.language].name
    else
      ""
  }

}

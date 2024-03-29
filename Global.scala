import com.sun.xml.internal.ws.api.server.WebModule
import modules.AppModule
import org.squeryl.adapters.{H2Adapter, PostgreSqlAdapter}
import org.squeryl.internals.DatabaseAdapter
import org.squeryl.{Session, SessionFactory}

import play.api.Application
import play.api.db.DB
import play.GlobalSettings
import scaldi.play.ScaldiSupport

/*
object Global extends GlobalSettings with ScaldiSupport
{

  override def onStart(app: Application) {
    SessionFactory.concreteFactory = app.configuration.getString("db.default.driver") match {
      case Some("org.h2.Driver") => Some(() => getSession(new H2Adapter, app))
      case Some("org.postgresql.Driver") => Some(() => getSession(new PostgreSqlAdapter, app))
      case _ => sys.error("Database driver must be either org.h2.Driver or org.postgresql.Driver")
    }
  }

  def getSession(adapter:DatabaseAdapter, app: Application) = Session.create(DB.getConnection()(app), adapter)
  //def applicationModule = new AppModule
}
*/
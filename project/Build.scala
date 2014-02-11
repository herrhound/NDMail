import sbt._
import Keys._
import play.Project._

object ApplicationBuild extends Build {

  val appName         = "ndmail"
  val appVersion      = "1.0-SNAPSHOT"

  val appDependencies = Seq(
    jdbc,
    "jp.t2v" %% "play2-auth"      % "0.11.0",
    "jp.t2v" %% "play2-auth-test" % "0.11.0" % "test",
    "com.github.scaldi" % "scaldi-play_2.10" % "0.2.2"
    //"org.postgresql" % "postgresql" % "9.2-1002-jdbc4"
    //"com.typesafe.slick" % "slick_2.10" % "2.0.0",
    //"com.typesafe.play" %% "play-slick" % "0.5.0.8"
  )

  val ndmailhelpers = play.Project(appName + "-ndmailhelpers", appVersion, path = file("modules/NDMail.Helpers"))

  val domainmodels = play.Project(appName + "-domainmodels", appVersion, path = file("modules/NDMail.Domain.Models")).dependsOn(ndmailhelpers)

  val webmodels = play.Project(appName + "-webmodels", appVersion, path = file("modules/NDMail.Web.Models")).dependsOn(ndmailhelpers)

  val repository = play.Project(appName + "-repository", appVersion, path = file("modules/NDMail.Repository")).dependsOn(domainmodels, webmodels)

  val ndmailbll = play.Project(appName + "-ndmailbll", appVersion, path = file("modules/NDMail.BLL")).dependsOn(domainmodels, webmodels)

  val ndmaildal = play.Project(appName + "-ndmaildal", appVersion, path = file("modules/NDMail.Dal")).dependsOn(domainmodels, ndmailhelpers)

  val sender = play.Project(appName + "-ndmailsender", appVersion, path = file("modules/NDMail.Sender")).dependsOn(ndmaildal, domainmodels, ndmailhelpers)

  val main = play.Project(appName, appVersion, appDependencies).settings(
    // Add your own project settings here
  ).dependsOn(repository, ndmailbll, ndmaildal, webmodels, ndmailhelpers).aggregate(repository, ndmailbll, ndmaildal, webmodels, ndmailhelpers)

}
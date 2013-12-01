import sbt._
import Keys._
import play.Project._

object ApplicationBuild extends Build {

  val appName         = "ndmail"
  val appVersion      = "1.0-SNAPSHOT"

  val appDependencies = Seq(
    jdbc,
    anorm
  )

  val ndmailhelpers = play.Project(appName + "-ndmailhelpers", appVersion, path = file("modules/NDMail.Helpers"))

  val domainmodels = play.Project(appName + "-domainmodels", appVersion, path = file("modules/NDMail.Domain.Models")).dependsOn(ndmailhelpers)

  val ndmaildal = play.Project(appName + "-ndmaildal", appVersion, path = file("modules/NDMail.Dal")).dependsOn(domainmodels, ndmailhelpers)

  val sender = play.Project(appName + "-ndmailsender", appVersion, path = file("modules/NDMail.Sender")).dependsOn(ndmaildal, domainmodels, ndmailhelpers)

  val webmodels = play.Project(appName + "-webmodels", appVersion, path = file("modules/NDMail.Web.Models")).dependsOn(ndmailhelpers)

  val main = play.Project(appName, appVersion, appDependencies).settings(
    // Add your own project settings here
  ).dependsOn(ndmaildal, webmodels, ndmailhelpers).aggregate(ndmaildal, webmodels, ndmailhelpers)

}
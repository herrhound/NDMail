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

  val domainmodels = play.Project(appName + "-domainmodels", appVersion, path = file("modules/NDMail.Domain.Models"))

  val ndmaildal = play.Project(appName + "-ndmaildal", appVersion, path = file("modules/NDMail.Dal")).dependsOn(domainmodels)

  val sender = play.Project(appName + "-ndmailsender", appVersion, path = file("modules/NDMail.Sender")).dependsOn(ndmaildal, domainmodels)

  val main = play.Project(appName, appVersion, appDependencies).settings(
    // Add your own project settings here
  ).dependsOn(ndmaildal).aggregate(ndmaildal)

}
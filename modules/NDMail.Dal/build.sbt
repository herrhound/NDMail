name := "ndmaildal"

version := "1.0-SNAPSHOT"

libraryDependencies ++= Seq(
  "org.squeryl" % "squeryl_2.10" % "0.9.6-RC2",
  "org.postgresql" % "postgresql" % "9.2-1002-jdbc4"
)

play.Project.playScalaSettings

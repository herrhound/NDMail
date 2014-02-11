package auth

import java.util.UUID
import scala.slick.lifted.MappedToBase

/**
 * Created with IntelliJ IDEA.
 * User: Nikola
 * Date: 12/1/13
 * Time: 11:41 AM
 * To change this template use File | Settings | File Templates.
 */
//import scala.slick.lifted.MappedToBase.base_

/*
sealed trait Permission
case object Administrator extends Permission
case object NormalUser extends Permission

object Permission {
  implicit val PermissionTimeMapper = MappedToBase.base[Permission, String](
    d => Permission.stringValueOf(d),
    t => Permission.valueOf(t))

  def valueOf(value: String): Permission = value match {
    case "Administrator" => Administrator
    case "NormalUser" => NormalUser
    case _ => throw new IllegalArgumentException()
  }

  def stringValueOf(value: Permission): String = value match {
    case Administrator => "Administrator"
    case NormalUser => "NormalUser"
    case _ => throw new IllegalArgumentException()
  }
}

*/
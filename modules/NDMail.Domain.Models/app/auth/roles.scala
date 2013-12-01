package auth

import java.util.UUID

/**
 * Created with IntelliJ IDEA.
 * User: Nikola
 * Date: 12/1/13
 * Time: 11:45 AM
 * To change this template use File | Settings | File Templates.
 */
case class roles(
  roleid: UUID,
  rolename: String,
  roledescription: String,
  systemstatusid: Int)
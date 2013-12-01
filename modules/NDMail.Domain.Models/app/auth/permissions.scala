package auth

import java.util.UUID

/**
 * Created with IntelliJ IDEA.
 * User: Nikola
 * Date: 12/1/13
 * Time: 11:41 AM
 * To change this template use File | Settings | File Templates.
 */
case class permissions (
  permissionid: UUID,
  permissioncode: String,
  permissiondescription: String,
  systemstatusid: Int)
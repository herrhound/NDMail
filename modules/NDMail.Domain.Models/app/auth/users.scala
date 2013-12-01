package auth

import java.util.UUID

/**
 * Created with IntelliJ IDEA.
 * User: Nikola
 * Date: 12/1/13
 * Time: 11:48 AM
 * To change this template use File | Settings | File Templates.
 */
case class users(
  userid: UUID,
  username: String,
  userpassword: String,
  email: String,
  secretquestion: String,
  secretanswer: String,
  systemstatusid: Int)
package auth

import java.util.UUID

/**
 * Created with IntelliJ IDEA.
 * User: Nikola
 * Date: 11/30/13
 * Time: 12:38 AM
 * To change this template use File | Settings | File Templates.
 */
case class application (
  applicationid: UUID,
  applicationname: String,
  loweredapplicationname: String,
  description: String )

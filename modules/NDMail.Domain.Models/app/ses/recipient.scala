package ses

/**
 * Created with IntelliJ IDEA.
 * User: Nikola
 * Date: 12/1/13
 * Time: 1:04 PM
 * To change this template use File | Settings | File Templates.
 */
case class recipient(
  recipientid: Int,
  notificationid: Int,
  recipienttypeid: Int,
  emailaddress: String,
  action: String,
  status: String,
  diagnosticcode: String)
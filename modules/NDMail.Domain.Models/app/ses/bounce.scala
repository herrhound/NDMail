package ses

import org.joda.time.DateTime

/**
 * Created with IntelliJ IDEA.
 * User: Nikola
 * Date: 12/1/13
 * Time: 12:59 PM
 * To change this template use File | Settings | File Templates.
 */
case class bounce(
  bounceid: Int,
  notificationid: Int,
  bouncetype: String,
  bouncesubtype: String,
  timestamp: DateTime,
  feedbackid: String,
  reportingmta: String)

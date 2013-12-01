package ses

import org.joda.time.DateTime

/**
 * Created with IntelliJ IDEA.
 * User: Nikola
 * Date: 12/1/13
 * Time: 1:03 PM
 * To change this template use File | Settings | File Templates.
 */
case class notification(
  notificationid: Int,
  logid: Int,
  notificationtype: Int,
  originalmailtimestamp: DateTime,
  messageid: String,
  source: String,
  timestamp: DateTime)
package ses

import org.joda.time.DateTime

/**
 * Created with IntelliJ IDEA.
 * User: Nikola
 * Date: 12/1/13
 * Time: 1:01 PM
 * To change this template use File | Settings | File Templates.
 */
case class complaint(
  complaintid: Int,
  notificationid: Int,
  timestamp: DateTime,
  feedbackid: String,
  useragent: String,
  complaintfeedbacktype: String,
  arrivaldate: DateTime)
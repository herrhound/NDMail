package main

import java.util.UUID
import org.joda.time.DateTime

/**
 * Created with IntelliJ IDEA.
 * User: Nikola
 * Date: 12/1/13
 * Time: 12:12 PM
 * To change this template use File | Settings | File Templates.
 */
case class log(
  logid: Int,
  taskdestinationrelationid: Int,
  messageid: String,
  statusid: Int,
  timestamp: DateTime,
  applicationid: UUID,
  systemstatusid: Int,
  transactionid: Int)
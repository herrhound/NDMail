package main

import java.util.UUID
import org.joda.time.DateTime

/**
 * Created with IntelliJ IDEA.
 * User: Nikola
 * Date: 12/1/13
 * Time: 12:43 PM
 * To change this template use File | Settings | File Templates.
 */
case class schedule(
  scheduleid: Int,
  name: String,
  executiontyme: DateTime,
  runnow: Boolean,
  applicationid: UUID,
  systemstatusid: Int,
  transactionid: Int)
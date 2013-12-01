package main

import java.util.UUID

/**
 * Created with IntelliJ IDEA.
 * User: Nikola
 * Date: 12/1/13
 * Time: 12:10 PM
 * To change this template use File | Settings | File Templates.
 */
case class destination(
  destinationid: Int,
  email: String,
  clientid: Int,
  sourceid: Int,
  applicationid: UUID,
  systemstatusid: Int,
  transactionid: Int)
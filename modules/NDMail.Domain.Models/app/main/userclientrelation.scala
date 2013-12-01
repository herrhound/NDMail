package main

import java.util.UUID

/**
 * Created with IntelliJ IDEA.
 * User: Nikola
 * Date: 12/1/13
 * Time: 12:56 PM
 * To change this template use File | Settings | File Templates.
 */
case class userclientrelation(
  userclientrelationid: Int,
  userid: UUID,
  clientid: Int,
  applicationid: UUID,
  systemstatusid: Int,
  transactionid: Int)
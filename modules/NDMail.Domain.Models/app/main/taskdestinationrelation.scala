package main

import java.util.UUID

/**
 * Created with IntelliJ IDEA.
 * User: Nikola
 * Date: 12/1/13
 * Time: 12:48 PM
 * To change this template use File | Settings | File Templates.
 */
case class taskdestinationrelation(
  taskdestinationrelationid: Int,
  taskid: Int,
  destinationid: Int,
  languageid: Int,
  systemstatusid: Int,
  transactionid: Int,
  applicationid: UUID)
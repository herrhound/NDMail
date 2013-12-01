package main

import java.util.UUID

/**
 * Created with IntelliJ IDEA.
 * User: Nikola
 * Date: 12/1/13
 * Time: 12:45 PM
 * To change this template use File | Settings | File Templates.
 */
case class source(
  sourceid: Int,
  name: String,
  description: String,
  applicationid: UUID,
  systemstatusid: Int,
  transactionid: Int)
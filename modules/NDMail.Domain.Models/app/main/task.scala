package main

import java.util.UUID

/**
 * Created with IntelliJ IDEA.
 * User: Nikola
 * Date: 12/1/13
 * Time: 12:47 PM
 * To change this template use File | Settings | File Templates.
 */
case class task(
  taskid: Int,
  templateid: Int,
  scheduleid: Int,
  applicationid: UUID,
  systemstatusid: Int,
  transactionid: Int)
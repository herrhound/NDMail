package main

import java.util.UUID

/**
 * Created with IntelliJ IDEA.
 * User: Nikola
 * Date: 12/1/13
 * Time: 12:07 PM
 * To change this template use File | Settings | File Templates.
 */
case class client(
  clientid: Int,
  corporateid:String,
  corporatename:String,
  applicationid: UUID,
  systemstatusid: Int,
  transactionid: Int
)
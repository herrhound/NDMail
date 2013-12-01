package main

import java.util.UUID

/**
 * Created with IntelliJ IDEA.
 * User: Nikola
 * Date: 12/1/13
 * Time: 12:52 PM
 * To change this template use File | Settings | File Templates.
 */
case class templatedetails(
  templatedetailsid: Int,
  fromemail: String,
  subject: String,
  body: String,
  templateid: Int,
  languageid: Int,
  applicationid: UUID,
  systemstatusid: Int,
  transactionid: Int)

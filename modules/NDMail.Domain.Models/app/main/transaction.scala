package main

import org.joda.time.DateTime
import java.util.UUID

/**
 * Created with IntelliJ IDEA.
 * User: Nikola
 * Date: 12/1/13
 * Time: 12:54 PM
 * To change this template use File | Settings | File Templates.
 */
case class transaction(
  transactionid: Int,
  userid: UUID,
  timestamp: DateTime)
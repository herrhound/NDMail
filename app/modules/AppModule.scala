package modules

import Account.{Accounts, IAccount}
import scaldi.Module
import scaldi.play.condition._

/**
 * Created by Nikola on 2/6/14.
 */
class AppModule extends Module {
  bind [IAccount] when (inDevMode or inTestMode) to new Accounts
}

package controllers

import play.api._
import play.api.mvc._
//import BaseController._

/**
 * Created with IntelliJ IDEA.
 * User: Nikola
 * Date: 11/5/13
 * Time: 11:10 PM
 * To change this template use File | Settings | File Templates.
 */
object Task extends BaseController {

  def index = Action {
    //Ok(views.html.Task.index("Your new application is ready."))
    //Ok(views.html.Task.index(basedal.dal.getLanguafeById(1)))
    Ok(views.html.Task.index(Utils.TestUtil.TestUtilMsg))
  }

}
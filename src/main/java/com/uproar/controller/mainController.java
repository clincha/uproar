package com.uproar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author Angus Clinch
 * @version 11/10/2019
 **/
@Controller
public class mainController {

  @GetMapping("/hello")
  public ModelAndView homepage() {
    return new ModelAndView("index");
  }

}

package ra.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import ra.model.User;

@Controller
@RequestMapping("/demo")
public class DemoController {

    @GetMapping
    public String demo(){
        return "demo";
    }
    @GetMapping("/form")
    public String form(Model model){
        model.addAttribute("user",new User("Hunghx","12345678"));
    return "form";
//        return new ModelAndView("form","user",new User("h","p"));
    }
    @GetMapping("/api/v4/{id}/{userId}")
    public String getId(@PathVariable Long id, @PathVariable("userId") Long userIds, Model model){
        model.addAttribute("id",id);
        model.addAttribute("userId",userIds);
        return "home";
    }
    @GetMapping("/api/{name:[a-z]{2}}")
    public String getPattern(@PathVariable String name,Model model){
       model.addAttribute("name",name);
        return "profile";
    }
    @GetMapping(value = "/login")
    public String login(@ModelAttribute("user") User user){
//        System.out.println(name +"   "+pass);
        System.out.println(user);
        return "profile";
    }

}

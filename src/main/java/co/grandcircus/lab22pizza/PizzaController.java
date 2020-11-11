package co.grandcircus.lab22pizza;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PizzaController {

	@GetMapping("/")
	public String homepage() {
		return "home";
	}
	
	@GetMapping("/reviewform")
	public String reviewForm() {
		return "reviewform";
	}
	
	@PostMapping("/confirmreview")
	public String confirmreview(@RequestParam String name, @RequestParam String comment, @RequestParam int rating, Model model) {
		model.addAttribute("name",name);
		model.addAttribute("rating",rating);
		model.addAttribute("comment",comment);
		return "confirmreview";
	}
	
	@GetMapping("/specialtypizza")
	public String specialtyPizza(@RequestParam String name, @RequestParam double price, Model model) {
		if(name.equals("meatlovers")) {
			model.addAttribute("name","Meatlovers Pizza");
		} else if(name.equals("baconchickenranch")) {
			model.addAttribute("name","Bacon Chicken Ranch Pizza");
		} else if(name.equals("hawaiian")) {
			model.addAttribute("name","Hawaiian Pizza");
		} else {
			
		}
		
		model.addAttribute("price","$" + price);
		
		return "specialtypizza";
		
	}
	
	@GetMapping("/pizzabuilder")
	public String pizzaBuilder() {
		return "pizzabuilder";
	}
	
	@PostMapping("/confirmpizza")
	public String confirmPizza(@RequestParam String size, @RequestParam int toppingCount, @RequestParam(required=false) boolean glutenFree, @RequestParam String specialInstructions, Model model) {
		//calculate total price
		//result page should confirm info and final price
		//include link back to homepage (on page path)
		
		model.addAttribute("size",size);
		model.addAttribute("toppingCount",toppingCount);
		model.addAttribute("specialInstructions",specialInstructions);
		
		double price = 0;
		
		if(size.equals("small")) {
			price+=(7.0 + (toppingCount * .5));
		} else if(size.equals("medium")) {
			price+=(10.0 + (toppingCount * 1));
		} else if(size.equals("large")){
			price+=(12.0 + (toppingCount * 1.25));
		} else {
			
		}
		
		if(glutenFree) {
			model.addAttribute("glutenFree","yes");
			price+=2;
		} else {
			model.addAttribute("glutenFree","no");
		}
		
		model.addAttribute("price","$" + price);
		
		return "confirmpizza";
	}
	

}

package co.grandcircus.lab22pizza;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class PizzaController {

	@GetMapping("/")
	public String homepage(Model model) {
		
		List<SpecialtyPizza> specials = new ArrayList<>();
		
		SpecialtyPizza pizzaPojo = new SpecialtyPizza("Meatlovers",14);
		specials.add(pizzaPojo);
		pizzaPojo = new SpecialtyPizza("BaconChickenRanch",13);
		specials.add(pizzaPojo);
		pizzaPojo = new SpecialtyPizza("Hawaiian",12);
		specials.add(pizzaPojo);
		
		
		
		model.addAttribute("specials",specials);
		
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
	
	@GetMapping("/specialtypizza/{name}/{price}")
	public String specialtyPizza(@PathVariable String name, @PathVariable double price, Model model) {
	
		model.addAttribute("name", name);
		
		
		model.addAttribute("price",price);
		
		return "specialtypizza";
		
	}
	
	@GetMapping("/pizzabuilder")
	public String pizzaBuilder(Model model) {
		
		List<String> toppings = new ArrayList<>();
		
		toppings.add("Banana Pepper");
		toppings.add("Green Pepper");
		toppings.add("Red Pepper");
		toppings.add("Pepperoni");
		toppings.add("Sausage");
		toppings.add("Pineapple");
		toppings.add("Ham");
		toppings.add("Chicken");
		toppings.add("Bacon");
		toppings.add("Black Olive");
		toppings.add("Mushroom");
		
		model.addAttribute("toppings", toppings);
		
		return "pizzabuilder";
	}
	
	@PostMapping("/confirmpizza")
	public String confirmPizza(@RequestParam String size, @RequestParam(required=false) boolean glutenFree,@RequestParam(required=false) String[] selected, @RequestParam(value = "selectedtopping", required = false) List<String> selectedtopping, @RequestParam String specialInstructions, Model model) {
		//calculate total price
		//result page should confirm info and final price
		//include link back to homepage (on page path)
		
		model.addAttribute("size",size);
		model.addAttribute("specialInstructions",specialInstructions);
		if(selectedtopping.size()<1) {
			model.addAttribute("toppingCount", "");
		} else {
			model.addAttribute("toppingCount", selectedtopping.size());
		}
		model.addAttribute("toppings",selectedtopping);
		model.addAttribute("selectedtopping",selectedtopping);
		
		double price = 0;
		
		if(size.equals("small")) {
			price+=(7.0 + (selectedtopping.size() * .5));
		} else if(size.equals("medium")) {
			price+=(10.0 + (selectedtopping.size() * 1));
		} else if(size.equals("large")){
			price+=(12.0 + (selectedtopping.size() * 1.25));
		} else {
			
		}
		
		if(glutenFree) {
			model.addAttribute("glutenFree","yes");
			price+=2;
		} else {
			model.addAttribute("glutenFree","no");
		}
		
		model.addAttribute("price",price);
		
		return "confirmpizza";
	}
	

}

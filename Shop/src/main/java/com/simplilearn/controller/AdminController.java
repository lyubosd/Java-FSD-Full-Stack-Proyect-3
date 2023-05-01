
package com.simplilearn.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.simplilearn.dao.OrderDAO;
import com.simplilearn.dao.ProductDAO;
import com.simplilearn.dao.UserDAO;
import com.simplilearn.entity.Order;
import com.simplilearn.entity.Product;
import com.simplilearn.entity.User;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private ProductDAO productDAO;

	@Autowired
	private UserDAO userDAO;

	@Autowired
	private OrderDAO orderDAO;

	@GetMapping("/products")
	public String products(Model theModel, HttpServletRequest request) {

		HttpSession session = request.getSession(true);
		User currentUser = (User) session.getAttribute("currentUser");

		List<Product> products = productDAO.getProducts();

		theModel.addAttribute("currentUser", currentUser);
 
		theModel.addAttribute("products", products);

		return "productManagement";
	}

	@GetMapping("/deleteProduct")
	public String deleteProduct(@RequestParam("productId") int productId, Model theModel) {

		productDAO.deleteProduct(productId);

		return "redirect:/admin/products";
	}

	@GetMapping("/deleteUser")
	public String deleteUser(@RequestParam("userId") int userId, Model theModel) {

		userDAO.deleteUser(userId);

		return "redirect:/admin/userManagement";
	}

	@GetMapping("/deleteOrder")
	public String deleteOrder(@RequestParam("orderId") int ordereId, Model theModel) {

		orderDAO.deleteOrder(ordereId);

		return "redirect:/admin/orderManagement";
	}

	@GetMapping("/userManagement")
	public String userManagement(Model theModel) {

		// get all users from DAO
		List<User> users = userDAO.getUsers();

		// add the users to the model
		theModel.addAttribute("users", users);

		return "userManagement";
	}

	@GetMapping("/orderManagement")
	public String orderManagement(Model theModel) {

		// get all users from DAO
		List<Order> orders = orderDAO.getOrder();

		int totalPrice = 0;

		for (Order order : orders) {
			totalPrice = totalPrice + order.getProduct().getPrice();
		}

		theModel.addAttribute("orders", orders);

		theModel.addAttribute("totalPrice", totalPrice);

		return "orderManagement";
	}

	@GetMapping("/addProduct")
	public String addProduct() {

		  
		return "addProduct";
	}
	
	
	@PostMapping("/addProductProcess")
	public String addProductProcess(HttpServletRequest request, 
			@RequestParam("name") String name,
			@RequestParam("company") String company,
			@RequestParam("size") int size,
			@RequestParam("price") int price,
			@RequestParam("image") String image
			) {
		
		 
		Product product = new Product(name, company, size, price, image);
		productDAO.saveProduct(product);

		return "redirect:/admin/products";
	}
	
	
	@GetMapping("/updateProduct")
	public String updateProduct(@RequestParam("productId") int productId , Model theModel) {
		
		Product product = productDAO.getProduct(productId);

		theModel.addAttribute("product", product);
		  
		return "updateProduct";
	}
	
	
	@PostMapping("/updateProductProcess")
	public String updateProductProcess(HttpServletRequest request, 
			@RequestParam("productId") int productId,
			@RequestParam("name") String name,
			@RequestParam("company") String company,
			@RequestParam("size") int size,
			@RequestParam("price") int price,
			@RequestParam("image") String image
			) {
		
		 
		Product product = productDAO.getProduct(productId);
		product.setCompany(company);
		product.setSize(size);
		product.setName(name);
		product.setPrice(price);
		product.setImage_link(image);
		
		productDAO.saveProduct(product);

		return "redirect:/admin/products";
	}

}

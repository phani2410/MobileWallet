/**
 * 
 */
package com.psl.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.psl.mobilewallet.util.HibernateUtil;
import com.psl.model.Wallet;

/**
 * 
 */
@Controller
public class DisplayHomePage {
	/**
	 * @return index page
	 */
	@RequestMapping("/home")
	public String displayHomePage(String name) {
		// List<Wallet> w =
		// HibernateUtil.getHibernateTemplate().find("from Wallet where amount>500");
		return "index";
	}

	@RequestMapping("/homeregister")
	public String submitHomePage(@ModelAttribute Wallet wallet) {

		Wallet w = new Wallet();
		w.setName(wallet.getName());
		w.setUsername(wallet.getUsername());
		w.setEmail(wallet.getEmail());
		w.setPassword(wallet.getPassword());
		if (w.getName().isEmpty() || w.getEmail().isEmpty()
				|| w.getUsername().isEmpty() || w.getPassword().isEmpty()) {
			return "index";
		} else {
			HibernateUtil.getHibernateTemplate().save(w);
			return "homeregistersuccess";
		}
	}

	@RequestMapping("/homelogin")
	public String submitHomeLogin(@ModelAttribute Wallet wallet, Model model, HttpServletRequest request) {

		if (wallet.getUsername().isEmpty() || wallet.getPassword().isEmpty()) {
			model.addAttribute("error","Enter Username and Password.");
			return "index";
		} else {
			List rows = HibernateUtil.getHibernateTemplate().find(
					"from Wallet w where w.username=? and w.password=?",
					new String[] { wallet.getUsername().trim(),
							wallet.getPassword().trim() });

			if (rows.size() > 0) {
				Wallet w = (Wallet) rows.get(0);
				model.addAttribute("w1", w);
				HttpSession session = request.getSession();
				session.setAttribute("w1", w);
				return "homeloginsuccess";
			} else {
				model.addAttribute("error","Login Failed. Invalid Username or Password.");
				return "homeloginfailure";
			}
		}

	}

	@RequestMapping("/resetpassword")
	public String submitResetPassword(@ModelAttribute Wallet wallet, Model model) {
		List rows = HibernateUtil.getHibernateTemplate().find(
				"from Wallet w where w.email=?",
				new String[] { wallet.getEmail().trim() });
		if (rows.size() > 0) {
			return "correctemail";
		} else {
			model.addAttribute("err","Enter a Valid Email Id.");
			return "index";
		}

	}
	
	@RequestMapping("/homesignout")
	public String submitHomeSignout(@ModelAttribute Wallet wallet, HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		session.invalidate();
		return "index";
	}

	
	@RequestMapping("/renew")
	public String renew()
	{
		return "renew";
	}
	
	@RequestMapping("/tohome")
	public String toHome()
	{
		return "homeloginsuccess";
	}
	
	@RequestMapping("/homecheck")
	public String submitHomeCheck(@ModelAttribute Wallet wallet) {
		// List rows =
		// HibernateUtil.getHibernateTemplate().find("from Wallet w where w.name=? and w.currency=?",
		// new String[]
		// { wallet.getName(), wallet.getCurrency() });

		Wallet w = new Wallet();

		// List rows = HibernateUtil.getHibernateTemplate().save(w);
		List rows = HibernateUtil.getHibernateTemplate().find(
				"from Wallet w where w.name=?",
				new String[] { wallet.getName() });
		if (rows.size() > 0) {
			return "homesavesuccess";
		} else {
			return "homesavefailue";
		}
	}
}

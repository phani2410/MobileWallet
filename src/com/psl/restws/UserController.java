package com.psl.restws;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.json.JSONException;
import org.json.JSONObject;

import com.psl.model.Wallet;


/**
 * 
 */
@Path("/buddy")
public class UserController
{
	/**
	 * @return String
	 */
	@GET
	@Produces("Application/Text")
	@Path("/hello")
	public String hello()
	{
		return null;
	}

	/**
	 * @param mobileNo
	 * @param password
	 * @return Response
	 */
	@GET
	@Path("/login/{mobile_no}/{password}/{asas}")
	@Produces(MediaType.APPLICATION_JSON)
	public Response login(@PathParam("mobile_no") String mobileNo, @PathParam("password") String password)
	{
		int status = 400;
		JSONObject jsonObject = null;
		//User user = BuddyPayManager.login(password, mobileNo);
		Wallet w = new Wallet();
		try
		{
			jsonObject = new JSONObject();
			if (true)
			{
				jsonObject.put("amount", w.getAmount());
				jsonObject.put("currency", w.getCurrency());
				jsonObject.put("username", w.getName());
				status = 200;
			}
			else
			{
				jsonObject.put("error", "Invalid mobile number or password!");
			}
		}
		catch (JSONException e)
		{
			e.printStackTrace();
		}
		return Response.status(status).entity(jsonObject.toString()).build();
	}
}

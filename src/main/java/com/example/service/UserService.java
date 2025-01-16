package com.example.service;

import com.example.model.User;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;

import java.util.ArrayList;
import java.util.List;

@Path("/users")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class UserService {

	private List<User> users = new ArrayList<>();

	@GET
	@Path("/")
	@Operation(summary = "Get all users")
	public Response getUsers() {
		return Response.ok(users).build();
	}

	@GET
	@Path("/{id}")
	@Operation(summary = "Get a user by ID")
	public Response getUserById(@Parameter(description = "ID of the user to be fetched") @PathParam("id") int id) {
		for (User user : users) {
			if (user.getId() == id) {
				return Response.ok(user).build();
			}
		}
		return Response.status(Response.Status.NOT_FOUND).build();
	}

	@POST
	@Path("/")
	@Operation(summary = "Create a new user")
	public Response createUser(User user) {
		users.add(user);
		return Response.status(Response.Status.CREATED).entity(user).build();
	}

	@PUT
	@Path("/{id}")
	@Operation(summary = "Update a user")
	public Response updateUser(@PathParam("id") int id, User user) {
		for (User existingUser : users) {
			if (existingUser.getId() == id) {
				existingUser.setName(user.getName());
				existingUser.setEmail(user.getEmail());
				return Response.ok(existingUser).build();
			}
		}
		return Response.status(Response.Status.NOT_FOUND).build();
	}

	@DELETE
	@Path("/{id}")
	@Operation(summary = "Delete a user")
	public Response deleteUser(@PathParam("id") int id) {
		users.removeIf(user -> user.getId() == id);
		return Response.status(Response.Status.NO_CONTENT).build();
	}
}

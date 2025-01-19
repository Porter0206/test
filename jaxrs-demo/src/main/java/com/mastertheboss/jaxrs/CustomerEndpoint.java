package com.mastertheboss.jaxrs;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.parameters.RequestBody;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;

import jakarta.ws.rs.*;
import jakarta.ws.rs.core.Response;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import java.util.List;


@Path("customers")
@ApplicationScoped
@Produces("application/json")
@Consumes("application/json")
@Tag(name = "Customer", description = "Operations related to customers")
public class CustomerEndpoint {

    @Inject
    CustomerRepository customerRepository;

    @GET
    @Operation(summary = "Get all customers", description = "Returns a list of all customers.")
    @ApiResponses(value = {
            @ApiResponse(responseCode = "200", description = "Successfully retrieved list",
                    content = @Content(mediaType = "application/json",
                            schema = @Schema(implementation = Customer.class))),
            @ApiResponse(responseCode = "500", description = "Internal server error")
    })

    @POST
    public Response create(Customer customer) {
        customerRepository.createCustomer(customer);
        return Response.status(201).build();
    }

    @PUT
    public Response update(Customer customer) {
        customerRepository.updateCustomer(customer);
        return Response.status(204).build();
    }
    @DELETE
    public Response delete(@QueryParam("id") Long customerId) {
        customerRepository.deleteCustomer(customerId);
        return Response.status(204).build();
    }

}
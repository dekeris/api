package io.github.dekeris.api;

import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;

@Path("/access")
public class Access {

    @POST
    @Path("/{name}")
    public void register(@PathParam("name") String name) {
	System.out.println(name);
    }
}

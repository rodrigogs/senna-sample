class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
		
		"/error"(view:'/error')
		"/404"(view:'/404')
		"/500"(view:'/500')
	}
}

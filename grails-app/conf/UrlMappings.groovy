class UrlMappings {

	static mappings = {

		/*
		 * Pages without controller
		 */
		"/about"		(view:"/siteinfo/about")
		"/ex"		(view:"/ex/index.gsp")
		"/ppt"		(view:"/ppt")

		/*
		 * Pages with controller
		 * WARN: No domain/controller should be named "api" or "mobile" or "web"!
		 */
        "/"	{
			controller	= 'gbook'
			action		= { 'v' }
            view		= { 'searchresult' }
        }
  "/bible/readgen/$book?/$chapter?/$verse?"
                {
                    controller = "bible"
                    action = "readgen"
                    constraints {
                        // apply constraints here
                    }
                }
      "/bible/read/$version?/$book?/$chapter?/$verse?"
                {
                    controller = "bible"
                    action = "read"
                    constraints {
                        // apply constraints here
                    }
                }
      "/bible/cmnt/$version?/$book?/$chapter?/$verse?"
                   {
                       controller = "bible"
                       action = "cmnt"
                       constraints {
                           // apply constraints here
                       }
                   }

       "/bible/search/$vk?/$offset?"
                {
                    controller = "bible"
                    action = "search"
                    constraints {
                        // apply constraints here
                    }
                }

       "/gbook/searchdics/$dic?/$offset?"
                      {
                          controller = "gbook"
                          action = "searchdics"
                          constraints {
                              // apply constraints here
                          }
                      }


       "/bible/search"
                {
                    controller = "bible"
                    action = "search"
                    constraints {
                        // apply constraints here
                    }
                }


		"/$controller/$action?/$id?"{
			constraints {
				controller(matches:/^((?!(api|mobile|web)).*)$/)
		  	}
		}

		/*
		 * System Pages without controller
		 */
		"403"	(view:'/_errors/403')
		"404"	(view:'/_errors/404')
		"500"	(view:'/_errors/error')
		"503"	(view:'/_errors/503')
	}
}

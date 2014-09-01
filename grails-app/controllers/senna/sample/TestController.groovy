package senna.sample

import grails.util.Holders

class TestController {

    def test() {
		
	}
	
	def test2() {
		
	}
	
	def error() {
		[status : params.status, text : params.text]
	}
	
	def error404() {
		response.sendError(404)
	}
	
	def error500() {
		response.sendError(500)
	}
	
	def unrouted() {
		
	}
	
	def slides() {
		def htmlContent = Holders.getServletContext().getResource('slides-deck.html').getContent().text
		render text: htmlContent, contentType:"text/html", encoding:"UTF-8"
	}
}

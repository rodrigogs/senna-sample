// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better 
// to create separate JavaScript files as needed.
//
//= require jquery
//= require senna-debug
//= require_self

if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
	
	$(document).ready(function() {
		console.log('Starting counter');
		startCounter();
	});
	
	// Counter
	function startCounter() {
		setInterval(function () {
			var counterEl = $('#counter'),
				counter = parseInt(counterEl.text());
			
			counterEl.text(String(counter + 1));
			}, 1000);
	}
}

if (typeof senna !== 'undefined') {
	
	var ERROR_404 = 'not found',
		ERROR_500 = 'internal server error';
	
	var app = new senna.App();
	app.setBasePath('/senna-sample');
	app.addSurfaces([ 'application-status', 'page-body' ]);
//	app.addRoutes(new senna.Route(/.*/, senna.HtmlScreen));
	app.addRoutes([
		{
			path: '/', handler: senna.HtmlScreen
		},
		{
			path: '/test/test', handler: senna.HtmlScreen
		},
		{
			path: '/test/test2', handler: senna.HtmlScreen
		},
		{
			path: '/test/error404', handler: senna.HtmlScreen
		},
		{
			path: '/test/error500', handler: senna.HtmlScreen
		},
		{
			path: '/error', handler: senna.HtmlScreen
		},
		{
			path: '/404', handler: senna.HtmlScreen
		},
		{
			path: '/500', handler: senna.HtmlScreen
		}
	]);
	
	// Override finalizeNavigate_ method to change application's title
	app.finalizeNavigate_ = function(path, nextScreen, opt_replaceHistory) {
	    var title = nextScreen.getTitle() || this.getDefaultTitle();
	    document.querySelector('.main-title').textContent = title;
	    
	    // Call super method
	    senna.App.prototype.finalizeNavigate_.call(this, path, nextScreen, opt_replaceHistory);
	};
	
	// Handle navigation errors
	app.handleNavigateError_ = function(path, nextScreen, err) {
	    
	    // Navigates to the error page
		var status = err.xhr.statusText.toLowerCase();
		if (status === ERROR_404) {
			this.navigate(app.getBasePath() + '/404');
		} else if (status === ERROR_500) {
			this.navigate(app.getBasePath() + '/500');
		} else {
			this.navigate(app.getBasePath() + '/error');
		}
	    
	    // Call super method
	    senna.App.prototype.handleNavigateError_.call(this, path, nextScreen, err);
	};
}
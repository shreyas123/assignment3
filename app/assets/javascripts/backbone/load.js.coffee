$(document).ready ->

	Assignment3.router = new Assignment3.Routers.MainsRouter()

	Backbone.history.start()
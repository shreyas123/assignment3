# This pulls in all your specs from the javascripts directory into Jasmine:
#
# spec/javascripts/*_spec.js.coffee
# spec/javascripts/*_spec.js


#=require application
#=require_tree ./support/
#=require_self
#=require_tree ./

window.jlet = jasmineLet jasmine, window
window.jset = (name, declaration) ->
  jlet name, declaration, evaluateBefore: true

# beforeEach ->
#   Assignment3.router = new Assignment3.Routers.MainRouter()
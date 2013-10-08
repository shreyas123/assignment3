class Assignment3.Routers.MainsRouter extends Backbone.Router
  initialize: (options) ->
    @$main = $('#main')
    @$data = $('#data')

  routes:
    ".*" : 'alertNow'

  alertNow: ->
    @_renderMain Assignment3.Views.Conversion.IndexView, param: JSON.parse(@$data.attr('data'))['conversions']

  _renderMain: (viewClass) ->
    @view.remove() if @view

    @view = new viewClass(Array.prototype.slice.call(arguments, 1)...).render()
    @$main.html(@view.el)
    scroll(0, 0)
    @view

  

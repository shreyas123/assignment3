Assignment3.Views.Conversion ||= {}

class Assignment3.Views.Conversion.IndexView extends Backbone.View
  template: JST["backbone/templates/conversion/index"]

  initialize: (options)->
    @data = options.param if options 
    super

  render: ->
    _.each @data, (val) =>
      @$el.append @template
          name: val['name']
          values: val['values']
          val: val
      @create_events(val['values'], val)
    @

  create_events: (values, json_data) ->
    _.each values, (value) =>

      $obj = @$(".#{value}")
      change = json_data[value]['change']

      @$(".#{change}").on 'input', (e) ->
        formula = json_data[value]['formula']
        formula = formula.replace("\#{#{change}}", $(e.currentTarget).val())
        outputValue = eval(formula)
        $obj.val(outputValue)


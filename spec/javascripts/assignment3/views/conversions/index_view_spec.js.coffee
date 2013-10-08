describe "Assignment3.Views.Conversion.IndexView", ->
  jlet 'view', -> 
    new Assignment3.Views.Conversion.IndexView
        el: $('#test')
        param: param
  jlet 'param', -> 
    [
      set1
    ]
  jlet 'set1', ->
    {
        name:"Degree To Fahrenheit",
        values: ["degree", "fahrenheit"], 
        degree: {
          formula: "(\#{fahrenheit} - 32) * 5 / 9", 
          symbol: "°C"
          name: 'Degree'
          change: 'fahrenheit'
        }, 
        fahrenheit: {
          formula: "(\#{degree}  *  9)/5 + 32", 
          symbol: "°F"
          name: 'Fahrenheit'
          change: 'degree'
        }
    }
    
  beforeEach ->
    loadFixtures 'basic'

  describe 'loading of template', ->
    it 'loads the object from the variable defined in the block', ->
      view.render()
      expect(view.$(".conversions").length).toEqual 1
      expect(view.$(".conversions").text()).toContain "Degree To Fahrenheit"

    it 'has 2 input boxes for values conversion', ->
      view.render()
      expect(view.$('input').length).toEqual 2

  describe 'events', ->
    it 'should listen change event and should calculate data accordingly', ->
      view.render()
      view.$(".degree").val(10).trigger('input')
      expect(view.$('.fahrenheit').val()).toEqual '50'

      view.$(".fahrenheit").val(40).trigger('input')
      expect(view.$('.degree').val()).toEqual '4.444444444444445'




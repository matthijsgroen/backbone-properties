
describe 'Backbone Properties', ->

  describe 'defining properties', ->

    beforeEach ->
      model_class = class extends Backbone.Model
        defaults:
          firstName: "Bob"

      @model = new model_class

    it 'defines properties based off set defaults', ->
      expect(@model.firstName).not.to.be.undefined

    it 'contains the expected value', ->
      @model.firstName.should.equal 'Bob'

  describe 'setting values', ->

    beforeEach ->
      model_class = class extends Backbone.Model
        defaults:
          firstName: "Bob"

      @model = new model_class

    it 'fires trigger as expected', ->
      @model.should.trigger('change:firstName', with: [@model, 'Alice']).when =>
        @model.firstName = "Alice"



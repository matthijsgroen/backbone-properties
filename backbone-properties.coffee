((factory) ->
  # Module systems magic dance.
  if (typeof require == "function" && typeof exports == "object" && typeof module == "object")
    # NodeJS
    module.exports = factory()
    # AMD
  else if (typeof define == "function" && define.amd)
    define -> factory()

)(->

  class Backbone.Model extends Backbone.Model

    initialize: ->
      super
      for name, defaultValue of @defaults
        @_addProperty(name)

    _addProperty: (name) ->
      Object.defineProperty this, name, {
        configurable: yes
        enumerable: yes
        get: ->
          @get(name)
        set: (value) ->
          change = {}
          change[name] = value
          @set change
      }

)


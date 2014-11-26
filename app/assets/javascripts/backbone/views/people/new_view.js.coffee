AdventCalendar.Views.People ||= {}

class AdventCalendar.Views.People.NewView extends Backbone.View
  template: JST["backbone/templates/people/new"]

  events:
    "submit #new-people": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (people) =>
        @model = people
        window.location.hash = "/#{@model.id}"

      error: (people, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this

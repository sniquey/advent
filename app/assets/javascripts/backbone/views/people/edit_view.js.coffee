AdventCalendar.Views.People ||= {}

class AdventCalendar.Views.People.EditView extends Backbone.View
  template : JST["backbone/templates/people/edit"]

  events :
    "submit #edit-people" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (people) =>
        @model = people
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this

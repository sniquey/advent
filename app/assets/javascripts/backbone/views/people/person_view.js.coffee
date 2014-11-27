AdventCalendar.Views.People ||= {}

class AdventCalendar.Views.People.PersonView extends Backbone.View
  template: JST["backbone/templates/people/person"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this

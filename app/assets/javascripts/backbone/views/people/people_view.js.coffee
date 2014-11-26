AdventCalendar.Views.People ||= {}

class AdventCalendar.Views.People.PeopleView extends Backbone.View
  template: JST["backbone/templates/people/people"]

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

AdventCalendar.Views.People ||= {}

class AdventCalendar.Views.People.ShowView extends Backbone.View
  template: JST["backbone/templates/people/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this

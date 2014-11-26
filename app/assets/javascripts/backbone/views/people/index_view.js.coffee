AdventCalendar.Views.People ||= {}

class AdventCalendar.Views.People.IndexView extends Backbone.View
  template: JST["backbone/templates/people/index"]

  initialize: () ->
    @options.people.bind('reset', @addAll)

  addAll: () =>
    @options.people.each(@addOne)

  addOne: (people) =>
    view = new AdventCalendar.Views.People.PeopleView({model : people})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(people: @options.people.toJSON() ))
    @addAll()

    return this

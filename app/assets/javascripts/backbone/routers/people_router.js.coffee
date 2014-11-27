class AdventCalendar.Routers.PeopleRouter extends Backbone.Router
  initialize: (options) ->
    @people = new AdventCalendar.Collections.PeopleCollection()
    @people.reset options.people

  routes:
    "new"      : "newPerson"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newPerson: ->
    @view = new AdventCalendar.Views.People.NewView(collection: @people)
    $("#people").html(@view.render().el)

  index: ->
    @view = new AdventCalendar.Views.People.IndexView(people: @people)
    $("#people").html(@view.render().el)

  show: (id) ->
    person = @people.get(id)

    @view = new AdventCalendar.Views.People.ShowView(model: person)
    $("#people").html(@view.render().el)

  edit: (id) ->
    person = @people.get(id)

    @view = new AdventCalendar.Views.People.EditView(model: person)
    $("#people").html(@view.render().el)

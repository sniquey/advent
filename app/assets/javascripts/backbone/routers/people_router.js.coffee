class AdventCalendar.Routers.PeopleRouter extends Backbone.Router
  initialize: (options) ->
    @people = new AdventCalendar.Collections.PeopleCollection()
    @people.reset options.people

  routes:
    "new"      : "newPeople"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newPeople: ->
    @view = new AdventCalendar.Views.People.NewView(collection: @people)
    $("#people").html(@view.render().el)

  index: ->
    @view = new AdventCalendar.Views.People.IndexView(people: @people)
    $("#people").html(@view.render().el)

  show: (id) ->
    people = @people.get(id)

    @view = new AdventCalendar.Views.People.ShowView(model: people)
    $("#people").html(@view.render().el)

  edit: (id) ->
    people = @people.get(id)

    @view = new AdventCalendar.Views.People.EditView(model: people)
    $("#people").html(@view.render().el)

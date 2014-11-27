class AdventCalendar.Models.Person extends Backbone.Model
  paramRoot: 'person'

  defaults:
    name: null
    present_ideas: null

class AdventCalendar.Collections.PeopleCollection extends Backbone.Collection
  model: AdventCalendar.Models.Person
  url: '/people'

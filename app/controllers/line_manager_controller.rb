class LineManagerController < ApplicationController
  def index
    @person = Person.new
    @lines = Line.all
  end

  def route
    person = Person.new(params[:person])
    person.name = Faker::Name.name if person.name.empty?

    rp = RoutePerson.new
    rp.call(person)
    redirect_to line_manager_path
  end
end

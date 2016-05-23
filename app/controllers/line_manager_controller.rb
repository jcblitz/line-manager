class LineManagerController < ApplicationController
  def index
    @person = Person.new
    @lines = Line.all
  end

  def route
    person = Person.new(params[:person])
    rp = RoutePerson.new
    rp.call(person)
    redirect_to line_manager_path
  end
end

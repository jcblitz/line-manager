class LineManagerController < ApplicationController
  def index
    @person = Person.new
  end

  def route
    person = Person.new(params[:person])
    line_router = LineRouter.new
    line = line_router.direct(person)
    redirect_to line_manager_path
  end
end

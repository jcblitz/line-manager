# responsible for routing a person and adding them to the appropriate line
class RoutePerson
  def initialize
    @router = LineRouter.new
  end

  def call(person)
    line = line_factory(person)
    line.people << person
    line.save
  end

  private

  # asks the router which line they should be in
  def line_factory(person)
    line_class = @router.direct(person)

    # using the database as the queuing mechanism. type is an index and by convention, the name of the class
    Line.find_by_type(line_class.name)
  end
end
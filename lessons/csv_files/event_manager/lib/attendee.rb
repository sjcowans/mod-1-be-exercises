class Attendee

attr_reader :id,
            :name,
            :zipcode

  def initialize(id, first, last, zip)
    @id = id
    @name = first + " " + last
    @zipcode = zip.to_s.rjust(5,"0")[0..4]
  end

end
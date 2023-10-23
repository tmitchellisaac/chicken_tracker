
class Molt 

attr_accessor :month, :year, :notes


  def initialize(month, year, notes = [])
    @month = month
    @year = year
    @notes = []
  end

def add_notes(notes)
  @notes << "#{notes}. "
end

end

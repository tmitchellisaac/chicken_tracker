

require "date"

class Chicken

  attr_accessor :name, :breed,
                :birth_month, :birth_year,
                :molts, :months_old, :alive

  def initialize(name, breed, birth_month, birth_year)
    @name = name
    @breed = breed
    @birth_month = birth_month
    @birth_year = birth_year
    @molts = []
    @alive = true
    @months_old = 
      birthdate = Time.new(@birth_year, @birth_month)
      avg_second_in_month = 2629800
      seconds = (Time.now- birthdate).to_i
      @months_old = seconds/avg_second_in_month
  end

  def death(death_month, death_year)
    @alive = false
    avg_second_in_month = 2629800
    @deathdate = Time.new(death_year, death_month)
    birthdate = Time.new(@birth_year, @birth_month)
    seconds = (@deathdate - birthdate)
    @months_old = (seconds/avg_second_in_month).round
  end

  def molt(month, year, *notes)
    molt_1 = Hash.new
    molt_1[:month] = month
    molt_1[:year] = year
    molt_1[:notes] = notes.join
    @molts << molt_1
  end
  

end


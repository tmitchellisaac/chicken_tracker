require 'date'

class Coop 

 attr_reader :chickens

  def initialize
    @chickens = []
  end

  def add_chicken(chicken)
    @chickens << chicken
  end

  def count_breed(breed)
    breed_count = Hash.new(0)
    @chickens.each do |chicken|
      breed_count[chicken.breed] += 1
    end
    breed_count[breed]
  end

  def total_chickens_in_coop
    @chickens.count
  end

  def all_names
    chicken_names = []
    @chickens.each do |chicken|
     chicken_names << chicken.name
    end
    chicken_names
  end

  def check_a_chickens_age(name)
    @chickens.each do |chicken|
      if chicken.name == name
        return "#{chicken.name} is #{chicken.months_old} months old"
      end
    end
  end

  def oldest_chicken
    chicken_ages = Hash.new
    @chickens.each do |chicken|
     chicken_ages[chicken] = chicken.months_old
    end
    chicken_ages.values.sort
    oldest_chicken = chicken_ages.sort_by {|chicken, age| age}.last[0]
    youngest_chicken = chicken_ages.sort_by {|chicken, age| age}.first[0]
    youngest_chicken
    oldest_chicken
  end

  def youngest_chicken
    chicken_ages = Hash.new
    @chickens.each do |chicken|
     chicken_ages[chicken] = chicken.months_old
    end
    chicken_ages.values.sort
    youngest_chicken = chicken_ages.sort_by {|chicken, age| age}.first[0]
    youngest_chicken
  end
end

# desired functionality-
# list out all chickens names
# return oldest alive chicken
# return youngest chicken
# return all hens vs roosters



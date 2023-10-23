require "./spec/spec_helper"
require 'date'


RSpec.describe Chicken do

  it "exists" do
    chicken_1 = Chicken.new("Almond Jr.", "Buff Orpington", 5, 2020)
    expect(chicken_1).to be_a Chicken
  end

  it "has a name, breed, birth month and birth year" do
    chicken_1 = Chicken.new("Almond Jr.", "Buff Orpington", 5, 2020)
    expect(chicken_1.name).to eq("Almond Jr.")
    expect(chicken_1.breed).to eq("Buff Orpington")
    expect(chicken_1.birth_month).to eq(5)
    expect(chicken_1.birth_year).to eq(2020)
  end

  it "has a molt method" do
    chicken_1 = Chicken.new("Almond Jr.", "Buff Orpington", 5, 2020)
    chicken_1.molt("December", 2022, "She almost died this time")
    expect(chicken_1.molt("December", 2022)). to be_a Array
    expect(chicken_1.months_old).to eq(41)
  end

  it "has a death method to calculate final age after death" do
    chicken_1 = Chicken.new("Almond Jr.", "Buff Orpington", "May", 2020)
    expect(chicken_1.alive).to eq(true)
    expect(chicken_1.months_old).to eq(41)
    chicken_1.death("May", 2021)
    expect(chicken_1.alive).to eq(false)
    expect(chicken_1.months_old).to eq(12)
  end


end

require "./spec/spec_helper"

require "date"

RSpec.describe Coop do

  it "exists" do
    coop_1 = Coop.new
    expect(coop_1).to be_a Coop
  end

  it "has ability to add chickens" do
    chicken_1 = Chicken.new("Almond Jr.", "Buff Orpington", 5, 2020)
    chicken_2 = Chicken.new("Tony", "Red-breasted Chick", 3, 2021)
    chicken_3 = Chicken.new("Pancake", "Black-breasted", 4, 2019)
    chicken_4 = Chicken.new("Cake", "Black-breasted", 2, 2019)
    coop_1 = Coop.new
    coop_1.add_chicken(chicken_1)
    coop_1.add_chicken(chicken_2)
    coop_1.add_chicken(chicken_3)
    coop_1.add_chicken(chicken_4)
    expect(coop_1.chickens).to eq([chicken_1, chicken_2, chicken_3, chicken_4])
    expect(coop_1.count_breed("Black-breasted")).to eq(2)
    expect(coop_1.count_breed("Buff Orpington")).to eq(1)
  end

  it "has ability to count total chickens" do
    chicken_1 = Chicken.new("Almond Jr.", "Buff Orpington", 5, 2020)
    chicken_2 = Chicken.new("Tony", "Red-breasted Chick", 3, 2021)
    chicken_3 = Chicken.new("Pancake", "Black-breasted", 4, 2019)
    chicken_4 = Chicken.new("Cake", "Black-breasted", 2, 2019)
    coop_1 = Coop.new
    coop_1.add_chicken(chicken_1)
    coop_1.add_chicken(chicken_2)
    coop_1.add_chicken(chicken_3)
    coop_1.add_chicken(chicken_4)
    expect(coop_1.total_chickens_in_coop).to eq(4)
  end

  it "can list chickens in coop by name" do
    chicken_1 = Chicken.new("Almond Jr.", "Buff Orpington", 5, 2020)
    chicken_2 = Chicken.new("Tony", "Red-breasted Chick", 3, 2021)
    chicken_3 = Chicken.new("Pancake", "Black-breasted", 4, 2019)
    chicken_4 = Chicken.new("Cake", "Black-breasted", 2, 2019)
    coop_1 = Coop.new
    coop_1.add_chicken(chicken_1)
    coop_1.add_chicken(chicken_2)
    coop_1.add_chicken(chicken_3)
    coop_1.add_chicken(chicken_4)
    expect(coop_1.all_names).to eq(["Almond Jr.", "Tony", "Pancake", "Cake"])
  end

  it 'has an oldest chicken calculator' do
    chicken_1 = Chicken.new("Almond Jr.", "Buff Orpington", 5, 2020)
    chicken_2 = Chicken.new("Tony", "Red-breasted Chick", 3, 2021)
    chicken_3 = Chicken.new("Pancake", "Black-breasted", 4, 2019)
    chicken_4 = Chicken.new("Cake", "Black-breasted", 2, 2019)
    coop_1 = Coop.new
    coop_1.add_chicken(chicken_1)
    coop_1.add_chicken(chicken_2)
    coop_1.add_chicken(chicken_3)
    coop_1.add_chicken(chicken_4)
    expect(coop_1.oldest_chicken).to eq(chicken_4)
  end

  it 'has an youngest chicken calculator' do
    chicken_1 = Chicken.new("Almond Jr.", "Buff Orpington", 5, 2020)
    chicken_2 = Chicken.new("Tony", "Red-breasted Chick", 3, 2021)
    chicken_3 = Chicken.new("Pancake", "Black-breasted", 4, 2019)
    chicken_4 = Chicken.new("Cake", "Black-breasted", 2, 2019)
    coop_1 = Coop.new
    coop_1.add_chicken(chicken_1)
    coop_1.add_chicken(chicken_2)
    coop_1.add_chicken(chicken_3)
    coop_1.add_chicken(chicken_4)
    expect(coop_1.youngest_chicken).to eq(chicken_2)
  end

  it "has method to check specific chicken's age" do
    chicken_1 = Chicken.new("Almond Jr.", "Buff Orpington", 5, 2020)
    chicken_2 = Chicken.new("Tony", "Red-breasted Chick", 3, 2021)
    chicken_3 = Chicken.new("Pancake", "Black-breasted", 4, 2019)
    chicken_4 = Chicken.new("Cake", "Black-breasted", 2, 2019)
    coop_1 = Coop.new
    coop_1.add_chicken(chicken_1)
    coop_1.add_chicken(chicken_2)
    coop_1.add_chicken(chicken_3)
    coop_1.add_chicken(chicken_4)
    expect(coop_1.check_a_chickens_age("Tony")).to eq("Tony is 31 months old")
  end
end
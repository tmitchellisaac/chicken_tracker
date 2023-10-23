require "./spec/spec_helper"


RSpec.describe Molt do

  it "exists" do
    molt_1 = Molt.new("June", 2020)
    expect(molt_1).to be_a Molt
  end

  it "has a month and a year" do
    molt_1 = Molt.new("June", 2020)
    expect(molt_1.month).to eq("June")
    expect(molt_1.year).to eq(2020)
  end
end
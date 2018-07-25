require 'rails_helper'

RSpec.describe Blog, type: :model do

  it "has 0 blogs at the start" do
      expect(Blog.count).to eq(0)
  end

  it "has 1 blog after creating" do
      Blog.create
      expect(Blog.count).to eq(1)
  end

  it "has 1 blog persisting after creating" do
      expect(Blog.count).to eq(1)
  end

  
end

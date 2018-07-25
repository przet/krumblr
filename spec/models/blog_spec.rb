require 'rails_helper'

RSpec.describe Blog, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "has 0 blogs at the start" do
      expect(Blog.count).to eq(0)
  end
end

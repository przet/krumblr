require 'rails_helper'

RSpec.describe Blog, type: :model do
        
  it "has 0 blogs at the start" do
      expect(Blog.count).to eq(0)
  end

  it "has 1 blog after creating" do
      @blog = Blog.create
      expect(Blog.count).to eq(1)
      @blog.destroy
  end

  it "has 0 blogs after deletion of the only one" do
      expect(Blog.count).to eq(0)
  end

  it "has 2 blogs of differrent id's" do
      #create an array of 2 different blogs
      @blog = [Blog.create({title:'Blog34', id:34}),
               Blog.create({title:'Blog56', id:56})]
      expect(Blog.count).to eq(2)

      #Uncomment to see that Blogs.ids is an array [34,56]
      #print(Blog.ids)
      
      #could also do a for loop
      expect(Blog.ids). to eq([@blog[0].id, @blog[1].id])
  end



  
end

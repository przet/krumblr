require 'rails_helper'

RSpec.describe Blog, type: :model do
        
  #Delete all blogs in ActiveRecord
  Blog.delete_all

  it "has 0 blogs at the start" do
      expect(Blog.count).to eq(0)
  end

  it "has 1 blog after creating" do
    @blog = Blog.create
    expect(Blog.count).to eq(1)
    @blog.destroy
  end

  it "has 0 blogs after deletion of the only one" do
    @blog = Blog.create
    expect(Blog.count).to eq(1)
    @blog.destroy
    expect(Blog.count). to eq(0)
  end

  it "has 2 blogs of differrent id's" do
    #create an array of 2 different blogs
    @blog_arr = [Blog.create({title:'Blog34', id:34}),
                Blog.create({title:'Blog56', id:56})]
    expect(Blog.count).to eq(2)
      
    #could also do a for loop
    expect(Blog.ids). to eq([@blog_arr[0].id, @blog_arr[1].id])
  end
  
end

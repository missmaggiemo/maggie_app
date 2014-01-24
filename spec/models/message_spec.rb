require 'spec_helper'

describe Message do
  
  before {@message = Message.new(name: 'Bugs Bunny', email: 'bugs@bunny.com', content: "Eh... What's up doc?")}
  
  subject {@message}
  
  describe "authentication" do
    it {should be_valid}
  end
  
  describe "methods" do
    it {should respond_to(:name)}
    it {should respond_to(:email)}
    it {should respond_to(:content)}
  end
  
end

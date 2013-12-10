require 'watir-webdriver'
require 'rspec'

describe "do something on google" do
  it "should find" do
    # b = Watir::Browser.new
    b = Watir::Browser.new :phantomjs
    b.goto 'https://test-site-1.mingle-staging.thoughtworks.com'
    
    b.text_field(:id => 'user_login').set 'sdesai'
    b.text_field(:id => 'user_password').set 'P@ssw0rd'
    b.input(:name => 'commit').click
    b.text.include? 'Logged in'
  end
  
  
end

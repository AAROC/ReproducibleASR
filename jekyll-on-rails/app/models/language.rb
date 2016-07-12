class Language < ActiveRecord::Base
  include  HTTParty
  def self.login
    body {:username => "demouser", :password => "Demo1234"}
    header "Content-Type: application/json"
    base_uri 'http://glibrary.ct.infn.it:3500/v2/users/login'
    response = HTTParty.post(login_url, :body => body, :header => header)
    token = response['id']
  end
  def self.for term
    get("", query: { query: term} ) ["elements"]
  end
end

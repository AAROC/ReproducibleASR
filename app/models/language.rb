class Language < ActiveRecord::Base
  include  HTTParty
  def self.initialise
    body = {:username => "brucellino", :password => "EQXIovD0tId4JqV4_CWGNHEzF9HYA4nk"}
    header = "Content-Type: application/json"
    base_uri = 'http://glibrary.ct.infn.it:3500/v2'
    login_url = '#{base_uri}/users/login'
    response = HTTParty.post(login_url, :body => body, :header => header)
    token = response['id']
    puts token
  end

  def self.for term
    get("", query: { query: term} ) ["elements"]
  end
end

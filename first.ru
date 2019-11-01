require "rack"

my_server = Proc.new do
  [200, { 'Content-Type' => 'text/html' }, ['<em>Hello</em>'], pretty_response]
end

  def pretty_response
    (Time.now.to_i % 2).zero? ?  ["<em>Hello</em>"] : ["<strong>Hello</strong>"]
  end

run my_server

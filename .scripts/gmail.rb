#!/usr/bin/ruby

require 'net/http'
require 'net/https'
require 'rexml/document'

$user = 'felipe.contreras@gmail.com'
$password = 'password'

def get_count(http, name, id=nil)
  id ||= name
  request = Net::HTTP::Get.new('/mail/feed/atom/%s' % id)
  request.basic_auth($user, $password)
  response = http.request(request)

  doc = REXML::Document.new(response.body)
  doc.root.elements.each('//fullcount') do |e|
    puts '%s: %s' % [name, e.text]
  end
end

http = Net::HTTP.new('mail.google.com', 443)
http.use_ssl = true
begin
  http.start do |http|
    get_count(http, 'priority', '%5Eiim')
    get_count(http, 'inbox', '')
    get_count(http, 'to-do')
  end
rescue SocketError
  exit 1
end

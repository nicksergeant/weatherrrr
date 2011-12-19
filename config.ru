require "rubygems"
require 'rack/contrib'
require 'rack-rewrite'

use Rack::Static, :urls => [], :root => "public"
use Rack::ETag
use Rack::Rewrite do
  r301 %r{/(.*)}, 'http://www.weather.com/search/enhancedlocalsearch?where=$1'
end
run Rack::Directory.new('public')

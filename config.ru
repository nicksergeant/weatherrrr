require 'rubygems'
require 'rack/contrib'
require 'rack-rewrite'

use Rack::Rewrite do
  rewrite %r{^/(.*)}, 'http://www.weather.com/search/enhancedlocalsearch?where=$1'
end

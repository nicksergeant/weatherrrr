require 'rack/rewrite'
use Rack::Rewrite do
  r301 %r{/(.*)}, 'http://www.weather.com/search/enhancedlocalsearch?where=$1'
end

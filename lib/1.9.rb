# All libraries for Ruby 1.9+ should be located here
RUBY_VERSION.replace "1.9" unless RUBY_VERSION > "1.9"
class Enumerator ; end
module Enumerable
  Enumerator = ::Enumerator # So that libraries defining Enumerable::Enumerator work
end
require '1.8.7'
require '1.9/array'
require '1.9/enumerable'
require '1.9/enumerator'
require '1.9/hash'
module Enumerable
  remove_const(:Enumerator)
end

require "null_cache_store/version"
require 'active_support/cache'
require 'active_support/cache/null_store'

if defined?(RAILS_VERSION) && RAILS_VERSION > '3.1'
  ActiveSupport::Deprecation.warn(
    'ActiveSupport::NullStore is included in Rails 3.2 and above, please remove the null_cache_store gem.')
end

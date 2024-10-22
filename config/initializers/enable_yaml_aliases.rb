require 'yaml'

# Monkey patch the Psych load method to enable aliases
module Psych
  class << self
    alias_method :old_load, :load
  end

  def self.load(yaml, *args, **kwargs)
    kwargs[:aliases] = true
    old_load(yaml, *args, **kwargs)
  end
end

require 'yaml'

module ActiveRecord
  class Base
    def self.configurations=(config)
      config = YAML.safe_load(ERB.new(File.read(Rails.root.join("config", "database.yml"))).result, aliases: true)
      super(config)
    end
  end
end

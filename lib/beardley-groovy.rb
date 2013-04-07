require 'pathname'

module Beardley
  module Groovy

    def self.classpath
      return Pathname.new(__FILE__).join("..", "vendor", "java", "groovy-all-1.7.5.jar")
    end

  end
end

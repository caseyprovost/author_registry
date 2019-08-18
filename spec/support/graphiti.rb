# frozen_string_literal: true

require "graphiti_spec_helpers/rspec"

module GraphitiSpecHelpers
  class Node
    def id
      rawid
    end
  end
end

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
  config.include Graphiti::Rails::TestHelpers
  config.include GraphitiSpecHelpers::RSpec
  config.include GraphitiSpecHelpers::Sugar

  # Raise errors during tests by default
  config.before :each do
    handle_request_exceptions(false)
  end
end

# frozen_string_literal: true
module Blacklight
  module Marc
    module Routes
      class MarcViewable
        def initialize(defaults = {})
          @defaults = defaults
        end

        def call(mapper, options = {})
          options = @defaults.merge(options)

          mapper.member do
            mapper.match 'librarian_view', via: :get
          end
        end
      end
    end
  end
end
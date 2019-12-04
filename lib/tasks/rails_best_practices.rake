# frozen_string_literal: true

namespace :rails_best_practices do
  desc "Best practices for Rails analysis"

  task :run do
    puts "Running rails best practices!"
    puts `rails_best_practices`
  end
end

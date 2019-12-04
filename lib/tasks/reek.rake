# frozen_string_literal: true

namespace :reek do
  desc "Reek - smell in code analysis"

  task :run do
    puts "Running reek!"
    bundle exec "reek ."
  end
end

# frozen_string_literal: true

require_relative('config/application')
require ('rubocop/rake_task')

Rails.application.load_tasks
Rake::Task['default'].clear

task :default do
  Rake::Task['brakeman:check'].invoke
  RuboCop::RakeTask.new(:rubocop)
  Rake::Task['rubocop'].invoke
  Rake::Task['rails_best_practices:run'].invoke
  Rake::Task['reek:run'].invoke
end

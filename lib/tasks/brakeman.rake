# frozen_string_literal: true

namespace :brakeman do
  desc "Brakeman - code analysis for security"

  task :check do
    require "brakeman"
    result = Brakeman.run app_path: ".", print_report: true, pager: nil
    exit Brakeman::Warnings_Found_Exit_Code unless result.filtered_warnings.empty?
  end
end

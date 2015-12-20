require 'riemann/client'
namespace :deploy do
  desc "Deploy the aom-rails application"
  task :release do
    # Your deployment code would go here

    Rake::Task["deploy:notify"].invoke
  end

  desc "Notify Riemann of a deployment"
  task :notify do
    c = Riemann::Client.new host: '104.131.69.159', port: 5555, timeout: 5

    c << {
      service: "aom-rails.#{Rails.env}.code_deploy",
      metric: 1,
      description: "Application aom-rails deployed",
      tags: "deployment",
      time: Time.now.to_i
    }
  end
end

namespace :ci do
  task :copy_yml do
    system("cp #{RAILS_ROOT}/config/database.yml.ci #{RAILS_ROOT}/config/database.yml")
  end
  
  desc "Prepare for CI and run"
  task :build => ['ci:copy_yml', 'db:migrate', 'spec', 'features'] do
  end
end
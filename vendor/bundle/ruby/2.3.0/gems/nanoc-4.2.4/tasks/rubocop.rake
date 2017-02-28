require 'rubocop/rake_task'

RuboCop::RakeTask.new(:rubocop) do |task|
  task.options  = %w( --display-cop-names --format simple )
  task.patterns = ['bin/nanoc', 'lib/**/*.rb', 'spec/**/*.rb', 'test/**/*.rb']
end

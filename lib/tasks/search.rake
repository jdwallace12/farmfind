desc "Perform Search and output results"
task :search => :environment do
  puts Crawler.new('John Smith').output
end

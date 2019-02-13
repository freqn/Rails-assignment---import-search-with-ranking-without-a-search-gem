namespace :db do
  namespace :seed do
    Dir[Rails.root.join('db', 'custom_seeds', '*.rb')].each do |filename|
      task_name = File.basename(filename, '.rb')
      desc "Seeds custom data"
      task task_name.to_s => :environment do
        load(filename) if File.exist?(filename)
      end
    end
  end
end
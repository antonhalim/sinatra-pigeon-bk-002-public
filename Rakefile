task :environment do
  require './config/environment'
end

#setup table schema
task :setup => :environment do
  Pigeon.auto_migrate!
end

# seed the db
task :seed => :environment do

  pigeon_list = {
    "Theo" => {
      :color => ["purple", "grey"],
      :gender => "male",
      :lives => "Subway"
    },
    "Peter Jr." => {
      :color => ["purple", "grey"],
      :gender => "male",
      :lives => "Library"
    },
    "Lucky" => {
      :color => ["purple"],
      :gender => "male",
      :lives => "City Hall"
    },
    "Ms .K" => {
      :color => ["grey", "white"],
      :gender => "female",
      :lives => "Central Park"
    },
    "Queenie" => {
      :color => ["white", "brown"],
      :gender => "female",
      :lives => "Subway"
    },
    "Andrew" => {
      :color => ["white"],
      :gender => "male",
      :lives => "Central Park"
    },
    "Alex" => {
      :color => ["white", "brown"],
      :gender => "male",
      :lives => "Central Park"
    }
  }

  pigeon_list.each do |name, pigeon_hash|
    p = Pigeon.new
    p.name = name
    pigeon_hash.each do |attribute, value|
      if attribute == :color
        p[attribute] = value.join(", ")
      else
        p[attribute] = value
      end
    end
    p.save
  end

end

#reset
task :reset => :environment do
  Pigeon.all.destroy
  DataMapper.repository(:default).adapter.execute("DROP TABLE pigeons")
end

#run server
task :server => :environment do
  `rackup config.ru`
end
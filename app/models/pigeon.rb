class Pigeon
  include DataMapper::Resource

  property :id, Serial 
  property :name, String 
  property :gender, String 
  property :color, String
  property :lives, String
  property :created_at, DateTime
end

DataMapper.finalize
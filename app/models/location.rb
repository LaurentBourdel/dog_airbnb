class Location < ApplicationRecord
	has_many :dogss, dependent: :destroy 
  has_many :dogsitters, dependent: :destroy 
  has_many :stalls, dependent: :destroy 
end

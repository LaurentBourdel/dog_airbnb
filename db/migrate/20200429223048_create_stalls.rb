class CreateStalls < ActiveRecord::Migration[5.2]
  def change
    create_table :stalls do |t|
    	t.belongs_to :dog, index: true
    	t.belongs_to :dogsitter, index: true
    	t.belongs_to :location, index: true
    end
  end
end

class CreatePigeons < ActiveRecord::Migration

	def change
		create_table :pigeons do |t|
			t.string :name, :color, :gender, :lives

			t.timestamps null: false
		end
	end
end

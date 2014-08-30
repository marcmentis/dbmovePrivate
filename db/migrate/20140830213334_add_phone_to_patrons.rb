class AddPhoneToPatrons < ActiveRecord::Migration
  def change
  	add_column :patrons, :phone, :string
  end
end

class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images, id: :uuid do |t|
      t.string :email

      t.timestamps
    end
  end
end

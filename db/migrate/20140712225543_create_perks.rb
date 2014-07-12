class CreatePerks < ActiveRecord::Migration
  def change
    create_table :perks do |t|
      t.string :title
      t.string :icon
      t.references :company, index: true

      t.timestamps
    end
  end
end

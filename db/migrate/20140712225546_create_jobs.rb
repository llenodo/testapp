class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.references :company, index: true
      t.string :title

      t.timestamps
    end
  end
end

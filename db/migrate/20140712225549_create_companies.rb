class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :tagline
      t.string :logo_url
      t.string :city
      t.string :state
      t.text :description
      t.string :url
      t.string :jobs_url

      t.timestamps
    end
  end
end

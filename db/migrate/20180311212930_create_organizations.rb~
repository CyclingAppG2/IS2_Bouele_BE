class CreateOrganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :organizations do |t|
      t.string :category
      t.string :NIT
      t.string :mainaddress
      t.string :branches
      t.image :logo
      t.string :firm
      t.int :score

      t.timestamps
    end
  end
end

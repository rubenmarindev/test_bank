class CreateBanks < ActiveRecord::Migration[6.1]
  def change
    create_table :banks do |t|
      t.string :name
      t.string :code
      t.string :nit

      t.timestamps
    end
  end
end

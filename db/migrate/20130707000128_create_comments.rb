class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :post, index: true
      t.string :name
      t.string :email
      t.string :content

      t.timestamps
    end
  end
end

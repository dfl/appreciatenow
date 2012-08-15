class CreateAppreciations < ActiveRecord::Migration
  def change
    create_table :appreciations do |t|
      t.string :what
      t.integer :share_count
      t.datetime :created_at, :approved_at
      t.references :created_by_user
      t.boolean :approved, :default => false
      t.timestamps
    end
  end
end

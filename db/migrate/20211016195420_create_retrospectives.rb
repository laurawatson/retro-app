class CreateRetrospectives < ActiveRecord::Migration[6.0]
  def change
    create_table :retrospectives do |t|

      t.timestamps
    end
  end
end

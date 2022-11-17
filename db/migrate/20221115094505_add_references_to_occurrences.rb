class AddReferencesToOccurrences < ActiveRecord::Migration[7.0]
  def change
    add_reference :occurrences, :author, foreign_key: { to_table: :users }
  end
end

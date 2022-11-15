class CreateCategoriesOccurrenciesJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :categories, :occurrences
  end
end

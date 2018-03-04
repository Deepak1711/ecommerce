class CreateReturnPolicies < ActiveRecord::Migration[5.1]
  def change
    create_table :return_policies do |t|
      t.integer :days
    end
  end
end

class AddRoleToCrewMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :crew_members, :role, :string
  end
end

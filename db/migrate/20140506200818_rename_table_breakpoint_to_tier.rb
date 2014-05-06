class RenameTableBreakpointToTier < ActiveRecord::Migration
  def change
    rename_table :breakpoints, :tiers
  end
end

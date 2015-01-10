class AddTimestampsWiki < ActiveRecord::Migration
  def change
    add_timestamps(:wikis)
  end
end

class AddArtistIdToWorks < ActiveRecord::Migration
  def change
    add_column(:works, :artist_id, :integer)
    add_column(:works, :updated_at, :datetime)
  end
end

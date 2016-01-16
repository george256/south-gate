class Issue < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
end
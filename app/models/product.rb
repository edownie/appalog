class Product < ActiveRecord::Base
  has_attached_file :photo, :styles => {
    :thumb => "80x80#",
    :medium => "160x160>",
  },
  :storage => :s3,
  :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
  :path => ":attachment/:id/:style.:extension",
  :bucket => 'ericdownie'

    validates_attachment_presence :photo
    validates_attachment_size :photo, :less_than => 5.megabytes
    validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
end

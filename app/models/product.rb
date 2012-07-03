class Product < ActiveRecord::Base
attr_accessible :description, :image_url, :price, :title
 default_scope :order => 'title' 
 validates :title, :description, :image_url, :price, :presence => true
 validates :price, :numericality => {:less_than => 5000, :greater_than => 0.01 }
 validates :title, :uniqueness => true
 validates :image_url, :format => { :with => %r{\.(gif|jpg|png)$}i,
                                    :message => 'must be of GIF, JPG or PNG format.'
}
end

class AddProducts < ActiveRecord::Migration[5.2]
  def change
  	Product.create :title => 'Hawaiian', :description => 'Its Hawaiian pizza', :price => 4, :size  => 30, :is_spicy => false, :is_veg   => false, :is_best_offer => false, :path_to_image => '/images/1.jpg'
	
	Product.create   :title => 'Hawaiian', :description => 'Its Hawaiian pizza BIG SIZE', :price => 6, :size  => 60,
:is_spicy => false, :is_veg   => false, :is_best_offer => false, :path_to_image => '/images/1.jpg'	

  	Product.create :title => 'Paperoni', :description => 'Its Paperoni pizza', :price => 8, :size  => 30, :is_spicy => true, :is_veg   => false, :is_best_offer => true, :path_to_image => '/images/2.jpg'	
  end
end

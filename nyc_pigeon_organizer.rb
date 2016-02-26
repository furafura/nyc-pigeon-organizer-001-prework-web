require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  name_array = []
  after_sort_value = {}
  data[:lives].each do |data_key, status| 
  	status.each do |status_value| #status is array
  		name_array << status_value
  		# binding.pry
  	end
  end
  name_array.each do |name_value|
  	after_sort_value[name_value] = {}
  	# binding.pry
	data.each do |data_key, status| #data_key :color ,status {:purple{},grey{}}
		after_sort_value[name_value][data_key] = []
		# binding.pry
	  	status.each do |status_key, status_value| #status_key :purple, status_value []
	  		# binding.pry
	  		if status_value.include?(name_value)
	  			after_sort_value[name_value][data_key] << status_key.to_s
	  		end
	  	end
	  	# binding.pry
	  end
	  #binding.pry
	end
	after_sort_value
end
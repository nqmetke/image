puts "Welcome to Filtermatic! v 1.0!"
print "What is your picture you would like to add a filter to? (Be sure to ad .jpg or .png etc to file name!)"
picname = gets.chomp
print "What filter would you like? (1 = Black and white 2 = Pinkify)"
num = gets.to_i
print "After you add the filter what would you like it to be exported as? (.jpg or .png)"
export = gets.chomp
if num == 1
	require './image_array.rb'

	image_array = ImageArray.new("#{picname}")

	image_array.each do |pixel_row|
       		pixel_row.each do |pixel|
			pixel_gray=(pixel.green + pixel.red + pixel.blue)/3
               		pixel.green = pixel_gray
               		pixel.red = pixel_gray
               		pixel.blue = pixel_gray

               
       		end

	end
elsif num == 2


require './image_array.rb'

        image_array = ImageArray.new("#{picname}")

        image_array.each do |pixel_row|
                pixel_row.each do |pixel|
                        pixel_gray=(pixel.green)/3
                        pixel.green = pixel_gray
                                               

end  
end
elsif num == 3

        require './image_array.rb'

        image_array = ImageArray.new("#{picname}")
		image_array.each do |pixel_row|
			pixel_row.each do |pixel|
				pixel_gray= (pixel.blue)/2
				pixel.green = pixel_gray
				pixel.red = pixel_gray	
    				pixel.blue = pixel_gray


end
end
end
image_array.write("./#{export}")
	

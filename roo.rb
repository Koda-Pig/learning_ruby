class MegaGreeter
	attr_accessor :names

	# Create object
	def initialize(names = "World")
		@names = names
	end

	# say hi to everyone
	def say_hi
		if @names.nil?
			puts "..."
		# this means we know @names is a list of some kind
		elsif @names.respond_to?('each')
			@names.each do |name|
				puts "Hello #{name}!"
			end
		else 
			puts "Hello #{@names}!"
		end
	end

	def say_bye
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("join")
		# join the list with commas
			puts "Goodbye #{@names.join(", ")}, and good riddance!"
		else 
			puts "Goodbye #{@names}. And don't come back."
		end
	end
end


if __FILE__ == $0
	mg = MegaGreeter.new
	mg.say_hi
	mg.say_bye

	# change name to be "sotz"
	mg.names = "sotz"
	mg.say_hi
	mg.say_bye

	# change tha name to an array
	mg.names = ['albert', 'brenda', 'charles', 'dave', 'fuckhead']
	mg.say_hi
	mg.say_bye

	# change to nil
	mg.names = nil
	mg.say_hi
	mg.say_bye
end
name = 'roo' # local var
NAME = 'roo' # constant var
$name = 'roo' # global var


if __FILE__ == $0
	NAME = 'changed' # gives a warning for trying to reassign a constant, but still lets you do it. I like it.
	puts NAME
end
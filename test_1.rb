composer = 'Mozart'
puts composer + 'was "da bomb", in his day.'

my_composer = 'Beethoven'
puts 'But I prefer '+ my_composer + ', personally.'

var1 = 2
var2 = '5'

puts var1.to_s + var2 #25
puts var1 + var2.to_i #7
puts 9.to_f / var2.to_i #1.8

a = [1,"Tan",3.14]
puts a[0]
puts a.size
a[2] = nil
puts a.inspect

phone = "0912-345-678"
if phone =~ /(\d{4})-(\d{3})-(\d{3})/
	ext = $1
	city = $2
	num = $3
end
puts ext + city + num

def say_hello(name)
	result = "Hi, " + name
	return result
end
puts say_hello('PCC')

time = Time.new
puts time

class Person
	def initialize(name)
		@name = name
	end
	def say(word)
		puts "#{word}, #{@name}"
	end
end
p1 = Person.new("PCC")
p2 = Person.new("Tan")
p1.say("Hello")
p2.say("Hello")

class Pet
	attr_accessor :name, :age
	def say(word)
		puts "Say: #{word}"
	end
end
class Cat < Pet
	def say(word)
		puts "Meow~"
		super
	end
end
class Dog < Pet
	def say(word, person)
		puts "Bark at #{person}"
		super(word)
	end
end
Cat.new.say("Hi")
Dog.new.say("Hi", "PCC")

languages = ['Ruby', 'Node.js', 'C']
languages.each do |lang|
	puts "I love #{lang}!!"
end

3.times do
	puts 'GJ!!'
end

1.upto(9) { |x| puts x }


languages = ['Ruby', 'Node.js', 'C']
languages.each_with_index do |lang, i|
	puts "#{i}, I love #{lang}!!"
end

3.times { puts "がんばって!" }

longest = ["cat", "beer", "pizza"].inject do |memo,word|
	(memo.length > word.length)? memo : word
end
puts longest

def call_block
	yield(1)
	yield(2)
	yield(3)
	yield(4)
end
call_block { |i|
	puts"#{i}: Blocks are cool!"
}

def my_sum(*val)
	val.inject { |sum,v| sum+v }
end
puts my_sum(1,2,3,4,5,6,7)

#print "How old are you? "
#age = gets.chomp()
#print "How tall are you? "
#height = gets.chomp()
#print "How much do you weight? "
#weight = gets.chomp()
#puts "You're #{age} old, #{height} tall and #{weight} heavy."

rolls = 10.times.collect { rand(6)+1 }
puts rolls


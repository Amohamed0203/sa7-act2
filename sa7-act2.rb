

#prob1
def tag(type, sent)
    "<#{type}>#{sent}</#{type}>"
end

puts tag :h1, "This is a header."
puts tag :p, "This is a paragraph."



#prob2
numbers = [1,2,3,4,5]

numbers.each do |n|
    puts n*2
end

triple = numbers.map do |n|
    n * 3
end

puts triple.inspect



#prob3
def safe_divide(num1, num2)
    begin
        puts num1 / num2
    rescue ZeroDivisionError
        puts "Division by zero error"
    end
end

puts safe_divide(10, 2)
puts safe_divide(5, 0)



#prob4
begin
    org = File.read("input.txt")
    rev = org.reverse

    File.open('output.txt', 'w') do |o|
        o.puts rev
    end
rescue Errno::ENOENT
    puts "input.txt not found"
end



#prob5
class InvalidAgeError < StandardError
end

def valid_age(num)
    if num < 0
        raise InvalidAgeError, "Negative numbers not allowed."
    else
        puts "#{num} is valid."
    end
end

begin
    valid_age(-5)
rescue InvalidAgeError  => e
    puts "#{e.message}"
end

begin
    valid_age(30)
rescue InvalidAgeError  => e
    puts "#{e.message}"
end



#prob6
student = {name: "Alice", age: 20, grade: "A"}
puts "name: #{student[:name]}"
puts "age: #{student[:age]}"
puts "grade: #{student[:grade]}"



#prob7
numbers = [1,2,3,4,5]

puts (numbers.select { |n| n.even? })



#prob8
def warn_unless(bool, message)
    unless bool == true
        puts message
    end
end

puts warn_unless(true, "message")
puts warn_unless(false, "message")



#prob9
def check_status
    puts $app_status
end

$app_status = 1
puts check_status
$app_status = 2
puts check_status



#prob10
5.times do |i|
    puts 'Ruby is fun!'
end



#prob11
(1..5).each do |n|
    puts n
end



#prob12
sample = File.open("sample.txt")

num = 1

sample.each_line do |content|
    puts "#{num}: #{content}"
    num += 1
    break if num > 3
end







#prob14
words = ['one', 'two', 'three']
len_words = words.map do |n|
    n.length
end

puts len_words.inspect



#prob15
def divide_numbers(num1, num2)
    begin
        puts num1 / num2
    rescue ZeroDivisionError
        puts "Cannot divide by zero!"
    end
end

puts divide_numbers(10, 2)
puts divide_numbers(5, 0)





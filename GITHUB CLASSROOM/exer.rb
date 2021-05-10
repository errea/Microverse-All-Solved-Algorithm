#puts "Enter a phrase you'd like to analyze: "
#text = gets.chomp

#words = text.split

#frequencies = Hash.new(0)

#words.each { |word| frequencies[word] += 1 }

#frequencies = frequencies.sort_by do |word, count|
  #count
#end

#frequencies.reverse!

#frequencies.each do |word, count|
  #puts word + " " + count.to_s
#end

def prime(n)
    puts "That's not an integer." unless n.is_a? Integer
    is_prime = true
    for i in 2..n-1
      if n % i == 0
        is_prime = false
      end
    end
    if is_prime
      puts "#{n} is prime!"
    else
      puts "#{n} is not prime."
    end
  end
  
  prime(2)
  prime(9)
  prime(11)
  prime(51)
  prime(97)

  # block that capitalizes each string in the array
["ryan", "jane"].each {|string| puts "#{string[0].upcase}#{string[1..-1]}"} 
# prints "Ryan", then "Jane"

def alphabetize(arr, rev=false)
    if rev
      arr.sort { |item1, item2| item2 <=> item1 }
    else
      arr.sort { |item1, item2| item1 <=> item2 }
    end
  end
  
  books = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"]
  
  puts "A-Z: #{alphabetize(books)}"
  puts "Z-A: #{alphabetize(books, true)}"



  # Creating my own method
  #   ********step 1 ******************
  =begin Define alphabetize in the editor to the right. 
  It shouldn’t take any arguments yet, and there doesn’t 
  need to be anything in the body of the method. =end

  #step 2
  =begin 
  Update your alphabetize method with two parameters: arr, 
  representing the array to be passed in, and rev, a boolean that 
  defaults to false
   =end

  #step 3
  =begin Inside your method, add a line that calls .sort! 
  on the arr array. Since it is the last line of the method, 
  the sorted array will be returned.
Now test your work! After your method, make a new array 
called numbers that contains a few numbers like the example above.
Call your alphabetize method with your 
numbers array as the parameter and puts the 
result to the console. =end

  #step 4
  =begin After your .sort! call, add an if-else statement. 
  If rev is true, call reverse! on arr, else return arr.
Keep your numbers array and the puts statement so 
that you can see your work in action! =end

  #step 5

  
  def alphabetize(arr, rev=false)

    arr.sort!
    if rev == true
          arr.reverse!
        else
          return arr
        end
    end
    
    numbers = [3,7,8,5,1,0,6]
     puts "first sort: #{alphabetize(numbers)}"


     #creating classes
     class Language
        def initialize(name, creator)
          @name = name
          @creator = creator
        end
          
        def description
          puts "I'm #{@name} and I was created by #{@creator}!"
        end
      end
      
      ruby = Language.new("Ruby", "Yukihiro Matsumoto")
      python = Language.new("Python", "Guido van Rossum")
      javascript = Language.new("JavaScript", "Brendan Eich")
      
      ruby.description
      python.description
      javascript.description



      class Machine
        @@users = {}
        
        def initialize(username, password)
          @username = username
          @password = password
          @@users[username] = password
          @files = {}
        end
        
        def create(filename)
          time = Time.now
          @files[filename] = time
          puts "#{filename} was created by #{@username} at #{time}."
        end
        
        def Machine.get_users
          @@users
        end
      end
      
      my_machine = Machine.new("eric", 01234)
      your_machine = Machine.new("you", 56789)
      
      my_machine.create("groceries.txt")
      your_machine.create("todo.txt")
      
      puts "Users: #{Machine.get_users}" 
      


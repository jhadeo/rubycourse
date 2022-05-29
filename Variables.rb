# Variables Section 2

#global var
$test = "good"

#local var
bananas = 3

#instance var
@monkey = 2

  def monkeys
    puts @monkey
  end
monkeys

#class var
 class MyUsers
  @@name = "admin"
  puts @@name
 end
MyUsers


#cont. global var
def test
  puts $test
end

test

class A
  class << self
    def class_name
      to_s
    end
  end
end
A.define_singleton_method(:who_am_i) do
  "I am: #{class_name}"
end
puts A.who_am_i   # ==> "I am: A"

guy = "Bob"
guy.define_singleton_method(:hello) { "#{self}: Hello there!" }
puts guy.hello    #=>  "Bob: Hello there!"

chris = "Chris"
chris.define_singleton_method(:greet) {|greeting| "#{greeting}, I'm Chris!" }
puts chris.greet("Hi") #=> "Hi, I'm Chris!"

andy = A.new
andy.define_singleton_method(:name) { |name| "I'am #{name}"}
puts andy.name("Andy")
puts andy.class.who_am_i

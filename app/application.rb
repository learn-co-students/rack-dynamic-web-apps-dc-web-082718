# class Application
#
#   def call(env)
#     resp = Rack::Response.new
#     # here a new response was instantiated an bound to the variable
#     # "resp"
#     num_1 = Kernel.rand(1..20)
#     num_2 = Kernel.rand(1..20)
#     num_3 = Kernel.rand(1..20)
#
#     resp.write "#{num_1}\n"
#     resp.write "#{num_2}\n"
#     resp.write "#{num_3}\n"
#
#     # created three random numbers using the Kernel class
#     if num_1 == num_2 && num_2 == num_3
#       resp.write "You win"
#       # - instead of using "puts" as you would with a command line interface
#       # the "write" method is being called on the instance of the response
#       # class
#       # - In this way you can think of web server as big ruby apps that respond to
#       # the user via HTTP requests rather than "puts" statements
#     else
#       resp.write "You lose"
#     end
#     resp.finish
#     # - the response method can be called many times to build up the full response.
#     # - The resp isnt sent back to the user until "finised" is called
#   end
#
# end

class Application

  def call(env)
    resp = Rack::Response.new

    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)

    resp.write "#{num_1}\n"
    resp.write "#{num_2}\n"
    resp.write "#{num_3}\n"

    if num_1==num_2 && num_2==num_3
      resp.write "You Win"
    else
      resp.write "You Lose"
    end

    resp.finish
  end

end

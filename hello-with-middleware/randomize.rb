class Randomize

   def initialize(app)
     @app = app
   end

   def call(env)
     status, headers, response = @app.call(env)
     response_body = response.first + "number #{rand(100)}"
     #call .first on response body because response content is always an array
     [status, headers, [response_body]]
   end
 end

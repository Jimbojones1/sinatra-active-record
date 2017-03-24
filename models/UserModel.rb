class User < ActiveRecord::Base

# don't always need this but if your table
# can't be found for some reason
#you can use this code
  self.table_name = 'users'

end

# Represents our User table

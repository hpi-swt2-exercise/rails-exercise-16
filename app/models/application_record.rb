# By default all new Rails 5 applications will have application_record.rb.
# If you are migrating from Rails 4, then simply create app/models/application_record.rb
# as shown below and change all models to inherit from ApplicationRecord instead of ActiveRecord::Base.
# https://stackoverflow.com/questions/41387706/uninitialized-constant-applicationrecord-error#41388844
# https://blog.bigbinary.com/2015/12/28/application-record-in-rails-5.html
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
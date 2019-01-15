module Slugifiable
  module InstanceMethods
    def slug
      (self.respond_to? :username) ? username.downcase.gsub(" ", "-") : name.downcase.gsub(" ", "-")
    end
  end
  module ClassMethods
    def find_by_slug(slug)
      self.all.find{ |object| object.slug == slug }
    end
  end
end

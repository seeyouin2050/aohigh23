class Aoh < ActiveRecord::Base
		acts_as_taggable # Alias for acts_as_taggable_on :tags
  		acts_as_taggable_on :tag_list
end

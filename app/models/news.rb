class News < ActiveRecord::Base
    validates_presence_of :description
    attribute :description_it, :validate => false
    attribute :description_de, :validate => false
    attribute :description_da, :validate => false
    attribute :description_es, :validate => false
    attribute :description_el, :validate => false
    attribute :description_hu, :validate => false
end

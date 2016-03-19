class News < ActiveRecord::Base
    validates_presence_of :description
    attribute :description_it
    attribute :description_de
    attribute :description_da
    attribute :description_es
    attribute :description_el
    attribute :description_hu
end

class CoursesController < ApplicationController
  def index
    @search_term = 'physics'
    @courses = Coursera.for(@search_term)
  end
end

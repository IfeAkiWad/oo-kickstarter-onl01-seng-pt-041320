require 'pry'

class Backer

attr_accessor :backed_projects, :backers
attr_reader :name

    def initialize(name)
        @name = name
        @backed_projects = []
    end

    def back_project(project)
        @backed_projects << project
        #also adds the backer to the project's backers array
        project.backers << self
        # binding.pry
    end

    
end
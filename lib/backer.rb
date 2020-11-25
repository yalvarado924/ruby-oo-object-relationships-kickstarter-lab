class Backer

    attr_accessor :name, :backer

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        new_project = ProjectBacker.new(project, backer)
        new_project.backer = self
    end

    def backed_projects
        project_backers = ProjectBacker.all.select {|projects| projects.backer == self}
        project_backers.map {|projectb| projectb.project}
    end

end
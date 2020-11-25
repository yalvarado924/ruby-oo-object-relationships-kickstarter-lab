class Project

    attr_accessor :title, :project

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        new_backer = ProjectBacker.new(project, backer)
        new_backer.project = self
    end

    def backers
        project_backers = ProjectBacker.all.select {|projectb| projectb.project == self}
        project_backers.map {|projectb| projectb.backer}
    end

end
class Backer
    attr_reader :name
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        x = []
        ProjectBacker.all.each do |thing|
            if thing.backer == self
                x << thing.project
            end
        end
        x
    end
end
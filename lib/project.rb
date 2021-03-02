class Project
    attr_reader :title
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        x = []
        ProjectBacker.all.each do |thing|
            if thing.project == self
                x << thing.backer
            end
        end
        x
    end
end
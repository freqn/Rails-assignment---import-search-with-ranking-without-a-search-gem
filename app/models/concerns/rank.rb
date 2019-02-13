module Rank
  
  Data = Struct.new(:record, :rank)

  class Records
    def initialize(term, records)
      @records  = records
      @term     = term
      @results  = []
    end

    def rank
      @records.each do |x|
        body_rank   = x.body.downcase.scan(@term).size
        title_rank  = x.title.downcase.scan(@term).size * 1000
        ranking     = 0
        
        if body_rank > 0 && title_rank > 0
          ranking += body_rank += title_rank
        elsif title_rank > 0
          ranking += title_rank
        else
          ranking += body_rank
        end
        @results << Data.new(x, ranking)
      end
      sorted
    end

    private

    def sorted
      @results.sort! { |a,b| b.rank <=> a.rank }.pluck(:record)
    end
  end
end
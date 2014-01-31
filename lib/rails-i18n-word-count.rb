module I18n
  module WordCount
    def self.word_count(prefix, min_length = 2)
      count_hash(I18n.t(prefix)).flatten.collect{ |x| x.split(/\s/) }.flatten.select{ |x| x.length >= min_length }.count
    end

    private

    def self.count_hash(hash)
      r = []
      hash.each do |k,v|
        if v.is_a? Hash
          r << count_hash(v)
        elsif v.is_a? String
          r << v
        end
      end

      r
    end
  end
end
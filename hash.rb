sample_hash = {
    'a' => 1,
    'b' => 2,
    'c' => 3
}

different_hash = {
    a: 1,
    b: 2,
    c: 3
}

def printHash(hash)
    hash.each { |item| puts item[1] }
end

def printKeyValueHash(hash)
    hash.each { |key, value| puts "#{key} | #{value}"}
end

def filterHash(hash, filter)
    result = {}
    hash.each do |key, value|
        if( filter.call(key, value) )
            result[key] = value
        end
    end
    return result
end

myFilter = ->(key, value){
    value > 1
}

newHash = filterHash(different_hash, myFilter)

printKeyValueHash newHash

# printKeyValueHash different_hash

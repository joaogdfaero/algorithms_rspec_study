class Problems
    def count(input)
        tamanho = input.length
    
        alphabet_u = ('A'..'Z').to_a # alphabeto
        tamanho_u = alphabet_u.length
        count_u = 0
    
        alphabet_l = ('a'..'z').to_a # alphabeto
        tamanho_l = alphabet_l.length
        count_l = 0
    
        numbers = (0..9).to_a
        tamanho_n = numbers.length
        numbers = (0..9).to_a.join(", ") # Transforma em array e separa eles por vírgula para poder fazer a comparaçã
        count_n = 0
    
    
        (0..tamanho-1).to_a.each do |i|
            if alphabet_u.include? input[i]
                count_u = count_u + 1
            end
        end
    
    
        (0..tamanho-1).to_a.each do |i|
            #if input.include? alphabet_l[i]
            if alphabet_l.include? input[i]
                count_l = count_l + 1
            end
        end

    
        (0..tamanho-1).to_a.each do |i|
            #if input.include? numbers[i]
            if numbers.include? input[i]
                count_n= count_n + 1
            end
        end

        return count_u, count_l, count_n

    end
    

end


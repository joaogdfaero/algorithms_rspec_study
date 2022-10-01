class Algorithms

    



    def bubble_sort (lista)
        tamanho = lista.length
    
    
        (0..3).each do |j|
            (0..j).each do |i|
                if lista[i]>lista[i+1]
                   lista[i],lista[i+1] = lista[i+1], lista[i]
                end
            end
        end
    
        return lista
    end


    def binary_search(x)

        lista = [10, 20, 80, 30, 60, 50,110, 100, 130, 170]
    
        lista = lista.sort
    
        if lista.include? x

        else
            exit
        end

        tamanho_O = lista.length()
    
        menor = lista[0] 
    
        maior = lista[-1]
    
        if tamanho_O.odd?
            tamanho_O = tamanho_O + 1 
        end
    
        mediana = lista[tamanho_O/2]
    
        while lista[0] != lista[-1] do
            tamanho = lista.length()
    
            if x == lista[tamanho/2]
                return (tamanho/2+(tamanho_O-tamanho))
    
            elsif x>lista[tamanho/2]
                lista=lista.drop(tamanho/2) 
            elsif x < lista[tamanho/2]
                lista=lista.pop(tamanho/2)
            end
            
        end
    
    end
    


end 

    

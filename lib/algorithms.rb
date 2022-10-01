class Algorithms
    def linear_search(lista,x)

        tamanho = lista.length()
    
        
        (0..tamanho-1).to_a.each  do |indice|
            if lista[indice]==x
                return indice + 1

            end
        end
    end

    def conta_ocorrencias(lista,x)
    
        # criando um index
        index = (0..lista.length()).to_a
    
        # tamanho da lista
        tamanho = lista.length()
        indice =0
        contagem=0
    
        (0..tamanho).to_a.each do |indice| 
            if lista[indice]==x
                contagem = contagem + 1
            end
        end
        return contagem
    end


    def minimum_sum(a)
        b =[]
        
        while a.length != 1
            #(0..a.length).each do |i| -> THIS IS MAKING THE LOOP TO RUN MORE TIMES THAN IT NEEDED, RESULTING ON ERROS
                if a[0]>a[1]
                    a.delete_at(0)
                    b.append(a[1])
                elsif a[0]<a[1]
                    a.delete_at(1)
                    b.append(a[0])
                end
        end
    
        return a[0]*b.length
    
    end
        

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

    

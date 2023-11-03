#!/bin/bash

if [ -f "text.txt" ]; then
    texto=$(<text.txt)

    frases=("O dia estava lindo." "o sol brilhava no céu." "as aves cantavam.")

    
    for frase in "${frases[@]}"; do
        if grep -q "$frase" <<< "$texto"; then
            echo "$frase"
        else
            echo "Frase não encontrada: $frase"
        fi
    done
else
    echo "O arquivo 'texto.txt' não foi encontrado."
fi

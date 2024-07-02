#!/bin/bash

# Cartella di destinazione per i file FLAC convertiti
high_res_dir="./.high_res"

# Verifica se la cartella ./.high_res esiste, altrimenti la crea
if [ ! -d "$high_res_dir" ]; then
    mkdir "$high_res_dir"
fi

# Trova tutti i file .flac nella directory corrente
for file in *
do
    if [[ "${file##*.}" == "flac" && ! -f "${file%.flac}.mp3" ]]; then
        echo "converto \"$file\""
        sox "$file" -C 320 "${file%.flac}.mp3"
        mv "$file" "$high_res_dir"/
    elif [[ "${file##*.}" == "flac" ]]; then
        echo "\"$file\" convertito"
        mv "$file" "$high_res_dir"/
    else
        echo "\"$file\" da non convertire"
    fi
done

echo "Conversione completata."


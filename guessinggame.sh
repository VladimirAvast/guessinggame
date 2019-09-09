#!/bin/bash

function question {
  echo "How many files are in the current directory ?"
}
question

files_count=$(ls | wc -l)

read answer

if [[ $answer == $files_count ]]; then
  echo "Congratulations your answer is correct!"
  exit
fi

while [[ $answer -ne $files_count ]]; do
  if [[ $answer -gt $files_count ]]; then
    echo "Your answer was too high."
    question
    read answer
  else 
    echo "Your anwer was too low."
    question
    read answer
  fi
  if [[ $answer == $files_count ]]; then
    echo "Congratulations your answer is correct!"
    exit
  fi
done



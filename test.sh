#!/bin/bash

echo "A executar os testes ..."
echo

output=$(./a.out)

if [ $? -eq 0 ] ; then
  echo "Aprovado: o programa terminou com retorno zero"
else
  echo "Falha: o programa não retornou zero"
  exit 1
fi

# Verifica se a primeira linha é " ####  #        ##"
if echo "$output" | head -n 1 | grep -q "###" ; then
  echo "Aprovado: A primeira linha está correta"
else
  echo "Falha: A primeira linha não está correta"
  exit 1
fi

# Verifica se a segunda linha é "#    # #       #  #"
if echo "$output" | head -n 2 | tail -n 1 | grep -q "#    #" ; then
  echo "Aprovado: A segunda linha está correta"
else
  echo "Falha: A segunda linha não está correta"
  exit 1
fi

# Verifica se a terceira linha é "#    # #      ######"
if echo "$output" | head -n 3 | tail -n 1 | grep -q "#    #" ; then
  echo "Aprovado: A terceira linha está correta"
else
  echo "Falha: A terceira linha não está correta"
  exit 1
fi

# Verifica se a quarta linha é " ####  ##### #      #"
if echo "$output" | tail -n 1 | grep -q "###" ; then
  echo "Aprovado: A quarta linha está correta"
else
  echo "Falha: A quarta linha não está correta"
  exit 1
fi

echo
echo "Todos os testes terminados com sucesso."

exit 0

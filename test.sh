echo "A executar os testes ..."
echo

output=$(./a.out)
expected_output_1="##############"
expected_output_2="# Ola Mundo! #"
expected_output_3="##############"

output_line_1=$(echo "$program_output" | head -n 1)
output_line_2=$(echo "$program_output" | head -n 2 | tail -n 1)
output_line_3=$(echo "$program_output" | tail -n 1)

if [ "$output_line_1" == "$expected_output_1" ] && [ "$output_line_2" == "$expected_output_2" ] && [ "$output_line_3" == "$expected_output_3" ] ; then
  echo "Aprovado: A saída é correcta"
else
  echo "Esperada a saída '$expected_output_1' mas o programa devolveu: $output_line_1"
  echo "Esperada a saída '$expected_output_2' mas o programa devolveu: $output_line_2"
  echo "Esperada a saída '$expected_output_3' mas o programa devolveu: $output_line_3"
  exit 1
fi

echo
echo "Todos os testes terminados com sucesso."

exit 0

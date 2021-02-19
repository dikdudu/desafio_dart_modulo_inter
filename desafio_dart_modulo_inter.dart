void main(List<String> args) {
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  // 1 - Remover os duplicados
  Set<String> setPessoas = Set();
  setPessoas.addAll(pessoas);

  // 2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino
  List listPessoas = setPessoas.map((p) => p.split('|')).toList();

  List pessoasSexoM = [];
  List pessoasSexoF = [];

  for (int p = 0; p < listPessoas.length; p++) {
    if (listPessoas[p][2] == 'Masculino') {
      pessoasSexoM.add(listPessoas[p]);
    } else {
      pessoasSexoF.add(listPessoas[p]);
    }
  }

  print('Quantidade de pessoas do sexo Masculino: ${pessoasSexoM.length}');
  print('Quantidade de pessoas do sexo Feminino: ${pessoasSexoF.length}\n');

  // 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos
  //     e mostre a quantidade de pessoas com mais de 18 anos
  List pessoasMaior18 = [];

  for (int p = 0; p < listPessoas.length; p++) {
    if (int.parse(listPessoas[p][1]) > 18) {
      pessoasMaior18.add(listPessoas[p]);
    }
  }

  print('Quantidade de pessoas maiores de 18 Anos: ${pessoasMaior18.length}\n');

  // 4 - Encontre a pessoa mais velha.
  int idade = 0;

  for (int p = 0; p < listPessoas.length; p++) {
    if (int.parse(listPessoas[p][1]) > idade) {
      idade = int.parse(listPessoas[p][1]);
    }
  }

  pessoasMaior18.forEach((p) => int.parse(p[1]) == idade
      ? print('${p[0]} é a pessoa mais velha com ${p[1]} Anos')
      : null);
}

# Resumo

## Variáveis

Para declarar variáveis em Dart basta usar a palavra reservado **var** e dar um nome para a variável.
Também posso declarar variáveis com tipagem estática.
```dart
// tipagem dinâmica
var exemplo;
// tipagem estática
String hello = "Hello world!";
int numero = 15;
double pi = 3.14;
Object pessoa = {"name": "fulano", "idade": 15};
```


## Operações matemáticas

As operaões matemáticas de Dart funcionam semelhante a todas linguagesn C like
```dart
// soma 
var soma = 1 + 1;
// Subtração
var subtracao = 2 - 1;
//Multiplicação
var mult = 2 * 2;
// Divisão
var div = 2 / 2;
// Divisão que retorna apenas a parte inteira
var div = 2 ~/ 2;
// Módulo (resto da divisão)
var mod = 3 % 2;
// Incremetno
numero++
++numero
// Decremetno
numero--
--numero
```

## Concatenaão de strings

Para concatenar strings basta usar o operador **+**
```dart
var text1 = "Hello ";
var text2 = "world!";
var text3 = text1 + text2; // Hello world!
```

## Estrutura de decisão

As estruturas condicionais do **Dart** funcionam exatamente igual ao java ou C#
```dart
// if else
if(condicao){
  // se condição for verdadeira executa
} else {
  // se condiçção for fala executa
}

// Operador ternário
var num = 3;
var parOuImpar = num % 2 == 0? 'par' : 'ímpar';
//parOuImpar é igual a "par" se o resto de num for 0, caso não seja é "ímpar"
``` 

## Operadores lógicos

Os operadores lógicos, assim como os aritméticos, são C like

```dart
numero1 > numero2 // Maior que
numero1 < numero2 // Menor que
numero1 >= numero2 // Maior ou igual que
numero1 <= numero2 // Menor ou igual que
proposicao1 == proposicao2 // igualdade
proposicao1 != proposicao2 // Diferença
proposicao1 && proposicao2 // AND
proposicao1 || proposicao2 // OR
!proposicao // negação
```

## Input(Entrada de dados)

Para usar entrada de dados é necessário importar um map, semelhante ao feito em **C**

```dart
import 'dart:io';

main() {
  print('Digite sua idade');
  var idade = stdin.readLineSync();
  print(idade);
}

// O dart sempre recebe texto do input, então é necessário fazer uma conversão
import 'dart:io';

main() {
  print('Digite sua idade');
  var input = stdin.readLineSync();
  // A entrada no Dart é Strin? que aceita null, já o parse exige string, que
  // não aceita null, então tem que fazer um teste antes para poder fazer a
  // conversão
  var idade = input =! null? int.parse(input): null;
  print(idade);
}

```

# Interpolação de string

Para interpolar strings no Dart é bem simples, basta passar o código entre **${}**

```dart
main(){
  var teste = 5;

  print("Testando ${teste}");
}
```
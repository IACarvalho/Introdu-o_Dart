import 'dart:io';

main() {
  print('digite sua altura');
  var input = stdin.readLineSync();
  var altura = input != null ? double.parse(input) : 0;

  print('Digite seu peso');
  input = stdin.readLineSync();
  var peso = input != null ? double.parse(input) : 0;

  var imc = peso / (altura * altura);

  print('Seu IMC é ${imc}.\nVocê está com o peso: ');

  if (imc < 18.5) {
    print('Abaixo do peso');
  } else if (imc < 25) {
    print('peso normal');
  } else if (imc < 30) {
    print('sobrepeso');
  } else if (imc < 35) {
    print('Obesidade I');
  } else if (imc <= 39.9) {
    print('Obesidade II');
  } else {
    print('Obesidade mórbida');
  }
}

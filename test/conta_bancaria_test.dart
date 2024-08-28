import 'package:flutter_test/flutter_test.dart';
import '../lib/conta_bancaria.dart';

void main() {
  group('ContaBancaria', () {
    test('Deve iniciar com o saldo correto', () {
      final conta = ContaBancaria<double>(100.0);
      expect(conta.consultarSaldo(), equals(100.0));
    });

    test('Deve permitir depósito', () {
      final conta = ContaBancaria<double>(100.0);
      conta.depositar(50.0);
      expect(conta.consultarSaldo(), equals(150.0));
    });

    test('Deve permitir saque se houver saldo suficiente', () {
      final conta = ContaBancaria<double>(100.0);
      conta.sacar(50.0);
      expect(conta.consultarSaldo(), equals(50.0));
    });

    test('Deve impedir saque se não houver saldo suficiente', () {
      final conta = ContaBancaria<double>(100.0);
      conta.sacar(150.0);
      expect(conta.consultarSaldo(), equals(100.0));
    });
  });
}

class ContaBancaria<T extends num> {
  T saldo;

  ContaBancaria(this.saldo);

  void depositar(T valor) {
    saldo = (saldo + valor) as T;
    print('Depósito de $valor realizado. Saldo atual: $saldo');
  }

  void sacar(T valor) {
    if (valor > saldo) {
      print('Saldo insuficiente para saque de $valor. Saldo atual: $saldo');
    } else {
      saldo = (saldo - valor) as T;
      print('Saque de $valor realizado. Saldo atual: $saldo');
    }
  }

  T consultarSaldo() {
    return saldo;
  }
}

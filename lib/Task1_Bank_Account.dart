class BankAccount {
  int _accountNumber;
  num _balance;

  BankAccount({int? accountNumber})
    : _accountNumber = (accountNumber != null && accountNumber > 0)
          ? accountNumber
          : 0,
      _balance = 0.0;

  int get accountNumber => _accountNumber;
  num get balance => _balance;

  set accountNumber(int? value) {
    if (value != null && value > 0) {
      _accountNumber = value;
    } else {
      print("Error");
    }
  }

  set balance(num? value) {
    if (value != null && value >= 0) {
      _balance = value;
    } else {
      print("Error");
    }
  }

  void deposit(num amount) {
    if (amount > 0) {
      _balance += amount;
      print(" OK deposit Money $amount . balance $_balance ");
      print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
    } else {
      print(" Sorry : dont deposit Money ");
    }
  }

  void withdraw(num amount) {
    if (amount > 0 && balance > amount ) {
      _balance -= amount;
      print(" OK withdraw Money $amount . balance $_balance ");
      print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
    } else {
      print(" Sorry : dont withdraw Money ");
    }
  }
}

void main() {
  BankAccount myAccount = BankAccount(accountNumber: 1069744164);
  myAccount.deposit(1000);
  myAccount.withdraw(2000);
}

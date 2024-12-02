import 'dart:io';

class BankAccount {
  String? accountNumber, ownerName;
  double _balance = 0;

  BankAccount(this.accountNumber, this.ownerName, this._balance);

  set balance(double value) {
    if (value >= 0) {
      _balance = value;
    } else {
      print("Balance can't be negative.");
    }
  }

  double get balance => _balance;

  void credit(double amount) {
    _balance += amount;
    print('Amount credited: $amount');
  }

  void debit(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
      print('Amount debited: $amount');
    } else {
      print("Insufficient balance.");
    }
  }

  void displayBalance() {
    print("Balance: $_balance");
  }
}

void main() {
  BankAccount account = BankAccount("12345", "John Doe", 5000);
  account.displayBalance();
  account.credit(2000);
  account.debit(1500);
  account.displayBalance();
}

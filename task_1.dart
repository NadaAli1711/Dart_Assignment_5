import 'package:uuid/uuid.dart';

// used uuid and updated dependencies in pubspec.yaml
class BankAccount {
  late String accountId;
  double balance;
  BankAccount({this.balance = 0}) {
    var uuid = Uuid();
    accountId = uuid.v4();
  }
  String withdraw(double amount) {
    if (balance >= amount) {
      return 'Balance after withdraw $amount is ${balance -= amount}';
    } else {
      return ('balance is not sufficient');
    }
  }

  double deposite(double amount) {
    return balance += amount;
  }
}

void main() {
  BankAccount b1 = BankAccount(balance: 2000);
  print(b1.withdraw(1500));
  BankAccount b2 = BankAccount();
  print(b2.deposite(1500));
}

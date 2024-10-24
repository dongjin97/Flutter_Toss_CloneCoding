import 'vo_bank.dart';

class BankAccount {
  final Bank bank;
  int balance;
  final String? accountTyeName;

  BankAccount(
    this.bank,
    this.balance, {
    this.accountTyeName,
  });
}

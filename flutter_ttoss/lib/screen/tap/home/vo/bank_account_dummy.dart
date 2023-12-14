import 'package:flutter_ttoss/screen/tap/home/vo/banks_dummy.dart';
import 'package:flutter_ttoss/screen/tap/home/vo/vo_bank_account.dart';

final bankAccountShinhan =
    BankAccount(bankShinhan, 30000000, accountTypeName: "우대통장");
final bankAccountShinhan2 =
    BankAccount(bankShinhan, 320000000, accountTypeName: "저축예금");
final bankAccountShinhan3 =
    BankAccount(bankShinhan, 303000000, accountTypeName: "저축예금");
final bankAccountKakao = BankAccount(bankKakao, 10000000);
final bankAccountToss =
    BankAccount(bankToss, 60000000, accountTypeName: "입출금통장");
final bankAccountToss1 =
    BankAccount(bankToss, 60000000, accountTypeName: "입출금통장");
final bankAccountKakao1 = BankAccount(bankKakao, 10000000);
final bankAccountToss2 =
    BankAccount(bankToss, 60000000, accountTypeName: "입출금통장");
final bankAccountKakao2 = BankAccount(bankKakao, 10000000);
final bankAccounts = [
  bankAccountShinhan,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountKakao,
  bankAccountToss,
  bankAccountToss1,
  bankAccountKakao1,
  bankAccountToss2,
  bankAccountKakao2
];

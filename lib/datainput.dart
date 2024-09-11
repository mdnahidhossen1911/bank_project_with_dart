import 'dart:io';

import 'package:simple_bank_project/account.dart';

class Datainput {
  BankAccount bankAccount = BankAccount();


  input(){
    print('Setting option >> ');
    String? option= stdin.readLineSync();
    int optionNumber = int.parse(option!);

    if(bankAccount.Database() >0){
      if (optionNumber ==1 ) createAccountInput() ;
      else if (optionNumber ==2 ) accountDetailsInput() ;
      else if (optionNumber ==3 ) monydeposit() ;
      else if (optionNumber ==4 ) monywithdraw() ;
      else input();
    }
    else if (optionNumber >4){
      print('This number is not functional\n');
    }
    else if (optionNumber ==1 ) createAccountInput() ;
    else {
      print('No Account! Create some accounts');
      createAccountInput();
    }

    input();
  }

  void createAccountInput(){
    print('\nCreate a new account');
    print('.....................');
    print('User name >> ');
    String? userName= stdin.readLineSync();
    print('User City >> ');
    String? userCity= stdin.readLineSync();
    print('Account Number >> ');
    int accountNumber = int.parse((stdin.readLineSync())!);

    bankAccount.createAccount(userName: userName!, userCity: userCity!, accountNumber: accountNumber);

    input();
  }

  void accountDetailsInput (){
    print('\nMy Bank details');
    print('.....................');
    print('Account Number >> ');
    int accountNumber = int.parse((stdin.readLineSync())!);

    bankAccount.accountDetails(accountNumber);

    input();
  }

  void monydeposit (){
    print('\nMony deposit');
    print('.....................');
    print('Account Number >> ');
    int accountNumber = int.parse((stdin.readLineSync())!);
    print('Deposit Amount>> ');
    double amount = double.parse((stdin.readLineSync())!);

    bankAccount.balanceDeposit(accountNumber,amount);

    input();
  }

  void monywithdraw (){
    print('\nMony withdraw');
    print('.....................');
    print('Account Number >> ');
    int accountNumber = int.parse((stdin.readLineSync())!);
    print('Deposit Amount>> ');
    double amount = double.parse((stdin.readLineSync())!);

    bankAccount.balanceWithdraw(accountNumber,amount);

    input();
  }


}
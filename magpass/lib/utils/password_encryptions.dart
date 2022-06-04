import 'package:crypt/crypt.dart';
import 'generate_password.dart';
import 'dart:math';


String hashMaster(){
    String masterPassword = masterSecret()[0];
    String deviceSecret = masterSecret()[1];

  //  hash the master password
    int cryptRound = 10000;
    String cryptSalt = "abcdefghijklmnop";
    final masterHash = Crypt.sha512(masterPassword, rounds:cryptRound, salt:cryptSalt);
    return masterHash.toString();
}

void main(){
  String newPassword = generatePassword(10);
  print(hashMaster());
  //password using the crypt module
  // final hashedPassword
}
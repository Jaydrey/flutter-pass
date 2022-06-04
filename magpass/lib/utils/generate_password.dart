import 'dart:math';
import 'dart:io';

// import 'package:flutter/material.dart';
const codeLen = 10;


List<String> masterSecret (){
  print("Enter your master password");
  String masterPassword = stdin.readLineSync().toString();
  List<String> wordPool = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz01234556789".split("");
  for(int i=0;i<codeLen;i++){
    wordPool.shuffle();
  }
  String deviceSecret = "";
  for(int i=0;i<codeLen;i++){
    deviceSecret += wordPool[Random().nextInt(wordPool.length)];
  }
  return [masterPassword, deviceSecret];
}

String generatePassword(int len){
//   getting all available characters, letters, digits and symbols
  String allLowerLetters = "abcdefghijklmnopqrstuvwxyz";
  String allUpperLetters = "ABCDEFGHIJKLOMNPQRSTUVWXYZ";
  String digits = "0123456789";
  String symbols = "`~!@#%&*()_-+={}/><\\|";
//   creating a password lists from the characters
  List<String> passLists = (allLowerLetters+allUpperLetters+digits+symbols).split("");
//shuffle the passLists
  for(int i=0;i<len;i++){
    passLists.shuffle();
  }
  
  String generatedPass = "";
//   randomly adding letters to the newly generated password
  for(int i=0;i<len;i++){
    generatedPass += passLists[Random().nextInt(passLists.length)];
  }
//   returning the newly generated password
  return generatedPass;
}

void main(){
  masterSecret();
}
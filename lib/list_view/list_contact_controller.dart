import 'package:annuaire/modele/Contact.dart';
import 'package:annuaire/formulaire.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

List<Contact> listContact = [
      Contact(
          nom: "Mike",
          prenom: "Litoris",
          mail: "mike.litoris@gmail.com",
          numeroPro: "07 70 45 22 98",
          numeroFixe: "07 70 45 22 98",
          numeroMobile: "07 70 45 22 98",
          poste: "Dev",
          societe: "Xefi"),
      Contact(
          nom: "Mike",
          prenom: "Litoris",
          mail: "mike.litoris@gmail.com",
          numeroPro: "07 70 45 22 98",
          numeroFixe: "07 70 45 22 98",
          numeroMobile: "07 70 45 22 98",
          poste: "Dev",
          societe: "Xefi"),
      Contact(
          nom: "Mike",
          prenom: "Litoris",
          mail: "mike.litoris@gmail.com",
          numeroPro: "07 70 45 22 98",
          numeroFixe: "07 70 45 22 98",
          numeroMobile: "07 70 45 22 98",
          poste: "Dev",
          societe: "Xefi"),
      Contact(
          nom: "Mike",
          prenom: "Litoris",
          mail: "mike.litoris@gmail.com",
          numeroPro: "07 70 45 22 98",
          numeroFixe: "07 70 45 22 98",
          numeroMobile: "07 70 45 22 98",
          poste: "Dev",
          societe: "Xefi"),
      Contact(
          nom: "Mike",
          prenom: "Litoris",
          mail: "mike.litoris@gmail.com",
          numeroPro: "07 70 45 22 98",
          numeroFixe: "07 70 45 22 98",
          numeroMobile: "07 70 45 22 98",
          poste: "Dev",
          societe: "Xefi"),
      Contact(
          nom: "Mike",
          prenom: "Litoris",
          mail: "mike.litoris@gmail.com",
          numeroPro: "07 70 45 22 98",
          numeroFixe: "07 70 45 22 98",
          numeroMobile: "07 70 45 22 98",
          poste: "Dev",
          societe: "Xefi"),
    ];
    final int _length = listContact.length;

    void deleteContact(int index) {
      listContact.removeAt(index);
    }
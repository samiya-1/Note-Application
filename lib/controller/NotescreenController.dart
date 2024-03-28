import 'package:flutter/material.dart';
import 'package:noteapp/core/constants/ColorConstants.dart';

class NoteScreenController {
  static List notesList = [];

  static List<Color> colorList = [
    ColorConstants.clr1,
    ColorConstants.clr2,
    ColorConstants.clr3,
    ColorConstants.clr4,
  ];

  //add

  static void addNote(
      {required String title,
      required String des,
      required String date,
      int clrIndex = 0}) {
    notesList.add({
      "title": title,
      "des": des,
      "date": date,
      "colorIndex": clrIndex,
    });
  }

  static void deleteNote(int index) {
    notesList.removeAt(index);
  }

  static void editNote({required int index,
      required String title,
      required String des,
      required String date,
      int clrIndex = 0}) {
    notesList[index] = {
      "title": title,
      "des": des,
      "date": date,
      "colorIndex": clrIndex,
    };
  }
}
class Solution {
  int uniqueMorseRepresentations(List<String> words) {
    List<String> morseCode = [
      ".-",
      "-...",
      "-.-.",
      "-..",
      ".",
      "..-.",
      "--.",
      "....",
      "..",
      ".---",
      "-.-",
      ".-..",
      "--",
      "-.",
      "---",
      ".--.",
      "--.-",
      ".-.",
      "...",
      "-",
      "..-",
      "...-",
      ".--",
      "-..-",
      "-.--",
      "--.."
    ];

    Set<String> set = {};

    for (String word in words) {
      String code = "";
      for (int i = 0; i < word.length; i++) {
        int index = word.codeUnitAt(i) - 'a'.codeUnitAt(0);
        code += morseCode[index];
      }
      set.add(code);
    }
    return set.length;
  }
}

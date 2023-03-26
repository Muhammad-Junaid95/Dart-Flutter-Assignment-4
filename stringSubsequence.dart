//Create a list of strings and find the longest common subsequence (substring) among all the strings in the list.
void main() {
  List<String> strings = [
    'Ghazi Khalid bin Waleed',
    'Eurtugrul Ghazi',
    'Abdul Rehman Ghazi',
    'Usman Ghazi'
  ];

  String longestCommonSubsequence = findLongestCommonSubsequence(strings);
  print("Longest Common Subsequence: $longestCommonSubsequence");
}

String findLongestCommonSubsequence(List<String> strings) {
  int stringLength = strings.length;
  String startingString = strings[0];
  int startingStringLength = startingString.length;

  for (int i = startingStringLength; i >= 1; i--) {
    for (int j = 0; j <= startingStringLength - i; j++) {
      String substring = startingString.substring(j, j + i);

      bool isCommonSubsequence = true;
      for (int k = 1; k < stringLength; k++) {
        if (!strings[k].contains(substring)) {
          isCommonSubsequence = false;
          break;
        }
      }

      if (isCommonSubsequence) {
        return substring;
      }
    }
  }

  return '';
}

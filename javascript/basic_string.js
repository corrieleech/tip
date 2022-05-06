// Write a function that returns the reverse of a given string.

// Input: “abcde”
// Output: “edcba”

//Write a function that takes in a string
//Set an index that is one less than the length of the string
//create a new string to return
//loop through the string, starting at the end and push to the new string one letter at a time
//subract one from index
//return reversed

// function reverse(string) {
//   let reversed = "";
//   let index = string.length - 1;
//   while (index >= 0) {
//     reversed = reversed + string[index];
//     index = index - 1;
//   }
//   return reversed;
// }

// console.log(reverse("this is corrie"));

// Given a string, write a function that returns true if the “$” character is contained within the string or false if it is not.

// Input: “i hate $ but i love money i know i know im crazy”
// Output: true

// Input: “abcdefghijklmnopqrstuvwxyz”
// Output: false

// function moneyCheck(string) {
//   if (string.includes("$")) {
//     return true;
//   } else {
//     return false;
//   }
// }

// console.log(moneyCheck("i hate $ but i love money i know i know im crazy"));
// console.log(moneyCheck("abcdefghijklmnopqrstuvwxyz"));

// Given a string, write a function that returns a copy of the original string that has every other character capitalized. (Capitalization should begin with the second character.)

// Input: “hello, how are your porcupines today?”
// Output: “hElLo, HoW ArE YoUr pOrCuPiNeS ToDaY?”

// function alternateCapitals(string) {
//   var index = 0;
//   var returnString = "";
//   while (index < string.length) {
//     if (index % 2 != 0) {
//       returnString = returnString + string[index].toUpperCase();
//     } else {
//       returnString = returnString + string[index];
//     }
//     index += 1;
//   }
//   return returnString;
// }

// console.log(alternateCapitals("hello, how are your porcupines today?"));

// Given a string, write a function that returns the first occurence of two duplicate characters in a row, and return the duplicated character.

// Input: “abcdefghhijkkloooop”
// Output: “h”

//write a function that accepts a string
//define a new dupe variable and set it to "No duplicates found"
//loop through the string and check if the next letter matches the number
//if the letter matches the next letter, return the letter, otherwise continue.

// function firstDupe(string) {
//   var index = 0;
//   var dupes = "No duplicates found.";
//   while (index < string.length) {
//     if (string[index] == string[index + 1]) {
//       dupes = string[index];
//       return dupes;
//     } else {
//       index += 1;
//     }
//   }
//   return dupes;
// }

// console.log(firstDupe("abcdefghhijkkloooop"));
// console.log(firstDupe("abcdefghifjklmnopqrstuvwxyz"));

// Given a string, write a function that returns true if it is a palindrome, and false if it is not. (A palindrome is a word that reads the same both forward and backward.)

// Input: “racecar”
// Output: true

// Input: “baloney”
// Output: false

//write a function that takes in a string
//build a reverse function and reverse the params
//then check if the revesred word == the original word and if so, return true
//else return false

// function palidromeCheck(string) {
//   let reversed = "";
//   let index = string.length - 1;
//   while (index >= 0) {
//     reversed = reversed + string[index];
//     index = index - 1;
//   }
//   if (reversed == string) {
//     return true;
//   } else {
//     return false;
//   }
// }

// console.log(palidromeCheck("racecar"));
// console.log(palidromeCheck("tacocat"));
// console.log(palidromeCheck("corrie"));

// Given two strings of equal length, write a function that returns the number of characters that are different between the two strings.

// Input: "ABCDEFG", "ABCXEOG"
// Output: 2

// Explanation: While the A, B, C, E, and G are in the same place for both strings, they have different characters in the other spaces. Since there are 2 such spaces that are different (the D and F in the first string), we return 2.

// Input: "ABCDEFG", "ABCDEFG",
// Output: 0

// write a function that takes in two strings
//set counuter to 0
// loop through first word, if word at index matches the other word at index, add one to counter
//return counter

// function hamming(string1, string2) {
//   var counter = 0;
//   var index = 0;
//   while (index < string1.length) {
//     if (string1[index] != string2[index]) {
//       counter += 1;
//     }
//     index += 1;
//   }
//   return counter;
// }

// console.log(hamming("ABCDEFG", "ABCDEFG"));
// console.log(hamming("ABCDEFG", "ABCXEOG"));

// Given a string of words, write a function that returns a new string that contains the words in reverse order.

// Input: “popcorn is so cool isn’t it yeah i thought so”
// Output: “so thought i yeah it isn’t cool so is popcorn”

//write a function that takes in a string
//turn the string into an array
//for each array
////WHERE YOU STOPPED

// Given two arrays of strings, return a new string that contains every combination of a string from the first array concatenated with a string from the second array.

// Input: ["a", "b", "c"], ["d", "e", "f", "g"]
// Output: ["ad", "ae", "af", "ag", "bd", "be", "bf", "bg", "cd", "ce", "cf", "cg"]

// #create a function that takes in array
// #create output array
// #using nested loop...
// #loop through each number in the array and check if it and the next number (inner loop) adds to 10. if so, return that array
// #if get to end and array.length = 0, return false

// function twoArrays(firstArray, secondArray) {
//   let smallestArray = firstArray;
//   let largestArray = secondArray;
//   let outputArray = [];
//   if (firstArray.length > secondArray.length) {
//     smallestArray = secondArray;
//     largestArray = firstArray;
//   }
//   for (let i = 0; i < smallestArray.length; i++) {
//     for (let j = 0; j < largestArray.length; j++) {
//       outputArray.push(`${smallestArray[i]}` + `${largestArray[j]}`);
//     }
//   }
//   return outputArray;
// }

// console.log(twoArrays(["d", "e", "f", "g"], ["a", "b", "c"]));

// Given a DNA strand, return its RNA complement (per RNA transcription).

// Both DNA and RNA strands are a sequence of nucleotides. Here we're representing the sequences with single-letter characters (e.g. a sample strand may look like: "AGCA".)

// Given a string representing a DNA strand, provide its transcribed RNA strand, according to the following pattern:

// G becomes C
// C becomes G
// T becomes A
// A becomes U

// So based on all this, here's a sample input/output:

// Input: 'ACGTGGTCTTAA'
// Output: 'UGCACCAGAAUU'

const changeCode = {
  G: "C",
  C: "G",
  T: "A",
  A: "U",
};

function DNA(DNAString) {
  let RNAString = "";
  for (let i = 0; i < DNAString.length; i++) {
    RNAString += changeCode[DNAString[i]];
  }
  return RNAString;
}

console.log(DNA("ACGTGGTCTTAA"));

const array = [1, 2, 3, 4];
const initialValue = 0;
const sum = array.reduce((previousValue, currentValue) => previousValue + currentValue, initialValue);

console.log(sum);

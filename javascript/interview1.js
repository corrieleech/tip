// "BOB loves-coding"

// "bobLovesCoding"

// Once your function is working, take the final output string and replace all characters that appear in your ChallengeToken with --[CHAR]--.

// Your ChallengeToken: ghla4ztsd26

//VISUALIZE
//write a functino that accepts a string
//make the whole string lowercase
//create temp string variable and set to empty, will add letters here
//loop through the string and check if the character is an alphabet string
//if it is, move to next index
//if it isn't, capitalize the next character and add it to the temp string variable and move index by 2

function StringChallenge(str) {
  str = str.toLowerCase();
  var tempString = "";
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  var index = 0;
  while (index < str.length) {
    if (alphabet.includes(str[index])) {
      tempString = tempString + str[index];
      index += 1;
    } else {
      tempString = tempString + str[index + 1].toUpperCase();
      index += 2;
    }
  }
  var challengeToken = "ghla4ztsd26";
  var finalString = "";
  index = 0;
  while (index < tempString.length) {
    if (challengeToken.includes(tempString[index].toLowerCase())) {
      var replacementLetter = "--" + tempString[index] + "--";
      finalString = finalString + replacementLetter;
    } else {
      finalString += tempString[index];
    }
    index += 1;
  }
  return finalString;
}

console.log(StringChallenge("BOB loves-coding"));

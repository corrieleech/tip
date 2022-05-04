// function solution(statues) {
//   var completeSet = statues.sort(function (numberA, numberB) {
//     return numberA - numberB;
//   });
//   console.log(completeSet);
//   var index = 0;
//   var missingStatues = 0;
//   while (index < completeSet.length - 1) {
//     if (completeSet[index + 1] !== completeSet[index] + 1) {
//       var numberMissing = completeSet[index + 1] - completeSet[index] - 1;
//       missingStatues = missingStatues + numberMissing;
//       console.log(missingStatues);
//     }
//     index += 1;
//   }
//   return missingStatues;
// }

// solution([6, 2, 3, 8]);

// function solution(sequence) {
//   return Math.max(...sequence)-Math.min(...sequence)+1-sequence.length
// }

// loop

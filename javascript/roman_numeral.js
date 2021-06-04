const numeralVals = {
    "I": 1,
    "V": 5,
    "X": 10,
    "L": 50,
    "C": 100,
    "D": 500,
    "M": 1000,
}

function romanNumeral(string) {
    // type your code here
    let chars = [...string];
    let acc = 0
    for (let i = 0; i < chars.length; i++) {
        let val = numeralVals[chars[i]];
        if (i < chars.length - 1 && val < numeralVals[chars[i + 1]]) {
            val = -val;
        }

        acc += val
    }
    return acc
}

if (require.main === module) {
    // add your own tests in here
    console.log("Expecting: 1");
    console.log(romanNumeral('I'));

    console.log("");

    console.log("Expecting: 9");
    console.log(romanNumeral('IX'));

    console.log("");

    console.log("Expecting: 402");
    console.log(romanNumeral('CDII'));
}

module.exports = romanNumeral;

// Please add your pseudocode to this file
// And a written explanation of your solution

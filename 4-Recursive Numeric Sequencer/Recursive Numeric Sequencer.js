let stream = [1, 5, 42, -376, 5, 19, 5, 3, 42, 2, 0];
let i = 0;

function readNextNumber() {
    if (i < stream.length) {
        return stream[i++];
    }
}

function countMax(num, max, count) {
    if (num === 0) {
        console.log(`(${max}; ${count})`);
        return;
    }
    if (num > max) {
        max = num;
        count = 1;
    } else if (num === max) {
        count++;
    }
    return countMax(readNextNumber(), max, count);
}
countMax(readNextNumber(), Number.MIN_SAFE_INTEGER, 0);
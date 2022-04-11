let sumArray = function(array) {
    let sum = 0;
    array.forEach(function(number) {
        sum += number;
    });
    console.log(sum);
}

sumArray([2, 2, 2])
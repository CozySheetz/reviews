var faker = require('faker');
var fs = require('fs');


let count = 0; 

let createData = () => {
    let str = '';
    while (count < 300){
        console.log(count)
    count ++
    str += count + '^'; 
    str += faker.date.past() + '^'; 
    str += faker.date.recent() + '^'; 
    str += Math.floor(Math.random() * (101 - 1) + 1) + '^'; 
    str += Math.floor(Math.random() * (101 - 1) + 1) + '^'; 
}
return str; 
}


var stream = fs.createWriteStream(__dirname + 'bookingInfo.csv');


stream.write(createData());
stream.end(); 


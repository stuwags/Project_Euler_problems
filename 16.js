var power = Math.pow(2,1000).toString();
console.log("I am length " + power.length);
var sum = 0;
for (var i = 0; i < power.length; i++)
{
  console.log(power.slice(i, i+1));
  sum += parseFloat(power.slice(i, i+1));
}
console.log(sum);
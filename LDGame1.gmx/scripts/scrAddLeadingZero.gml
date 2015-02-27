///scrAddLeadingZero(num, digits)

var num = argument0;
var digits = argument1;

var str = "";

for (var i = 0; i < digits; ++i) {
    if (num < power(10,digits)) {
        str += "0";
    }
}

str += string(num);

return str;

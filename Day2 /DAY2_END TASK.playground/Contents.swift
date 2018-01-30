//: Playground - noun: a place where people can play

import UIKit

/*  *********************************** DAY 2 CLASS TASK  ************************************ */

//USE INDEX TO PRINT NAME FULL FROM FIRST TO LAST THEN LAST TO FIRST(REVERSE)
var myname = "KHUSHBOO"
var countname = myname.count
for i in stride(from:0, to: countname , by: 1)
{
    let display = myname[myname.index(myname.startIndex, offsetBy: i)]
    print(display)
}
print("NOW IN REVERSE ORDER")
for i in stride(from:0, to: countname , by: 1)
{
    let display1 = myname[myname.index(myname.endIndex, offsetBy: (-i - 1))]
    print(display1)
}

/* ********************************************************************************************* */

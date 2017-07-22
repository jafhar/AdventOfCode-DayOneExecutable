import AOCDayOneLibrary
import Foundation

var arguments = CommandLine.arguments

//Remove first element, which is related to input path, actual input starts from index:1
let inputArray = arguments.dropFirst()

//Command line space as delimeter and it creates array of string from input.concatenating string from array
let input = inputArray.reduce("", {(result:String, element:String)in
    return result+element
})

if input == "" {
    print("Please Enter Input, Ex : L1, R1,")
} else {
    //Actual String from Puzzle contains space but,the final input string created doesnt contain space as command line treated it as delimeter, we need to include it as library check for ", " in inputString
    let inputString = (input as NSString).replacingOccurrences(of: ",", with: ", ")
    print("Input :\(inputString)")
    
    //Call shortest distance calculation function with input string
    let resultForPart1 = AOCDayOneLibrary.shortestDistanceFor(inputString:inputString)
    print("Part1 Result:\(resultForPart1)")
    
    let resultForPart2 = AOCDayOneLibrary.distanceToFirstRevisitedLocationIn(inputString:inputString)
    print("Part2 Result : \(resultForPart2)")
}

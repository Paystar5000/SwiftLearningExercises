/*:
 [Table of Contents](@first) | [Previous](@previous) | [Next](@next)
 - - -
 * callout(Exercise): Get Acquainted. Get a few properties of each student in your class... name and email are good. Use the `String` and `Character` as well as the data types and operators in [Basics | Data Types | Operators](Basics%20|%20Data%20Types%20|%20Operators) to complete this exercise.
 
 **Example Output:**
 - `My name is Mathew Sheets, my email is swift.dude@gmail.com.`
 - `Other students in my class are Annie, Sam, Jack, Hudson and Oliver.`
 - `Oliver dropped this class.` (**use the second bullet point string to pull out the last students's name.**)
 - `Other students in my class are Annie, Sam, Jack, Hudson and CARSON was added.`  (**use the second bullet point string and append another student.**)
 - `Jack and Hudson are in the class.` (**use the second bullet point string to pull out third and fourth student.**)
 - `My Swift class in on  Jan 18 2017, Jan 25 2017 ` (**LIST OUT THE REST OF THE DATES**)
 
 **Constraints:**
 - Use a nested tuple to hold your students
 - Use the string created from the second bullet point for all other string creation
 */
import Foundation
import Cocoa

var students = ((name: "Mathew Sheets", email: "swift.dude@gmail.com"),
                (name: "Corey", email:"coreData@icloud.com"),
                (name: "Ron", email: "ronron@hotmail.com"),
                (name: "Cruzz", email: "cruzzzz@aol.com"),
                (name: "Brian", email: "brian@mac.com"),
                (name: "Oliver", email: "ollie@outlook.com"))

let weeksInSemester = 16
let currentCalendar = Calendar.current
var classStartDateComponents = DateComponents(calendar: currentCalendar, year: 2017, month: 1, day: 18, hour: 1800)
//classStartDateComponents.year = 2017
//classStartDateComponents.month = 1
//classStartDateComponents.day = 18
classStartDateComponents.hour = 18

let classDate = currentCalendar.date(from: classStartDateComponents)!

var classDates = [Date] (repeating: currentCalendar.date(from: classStartDateComponents)!, count: weeksInSemester)

let week: TimeInterval = 60.0 * 60.0 * 24.0 * 7.0
for (index, element) in classDates.enumerated() {
    if index > 0 {
        classDates[index] = classDates[index - 1].addingTimeInterval(week)
    }
}

let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "MMM dd yyy"
let dateStringsArray = classDates.flatMap { dateFormatter.string(from: $0) }
let classDatesString = dateStringsArray.joined(separator: ", ")


print("My name is \(students.0.0), my email is \(students.0.1).")

print("Other students in my class are \(students.1.0), \(students.2.0), \(students.3.0), \(students.4.0), and \(students.5.0).")

print("\(students.5.0) dropped this class.")

students.5 = ("", "")

students.5 = ("Carson", "coloradoKid@yahoo.com")

print("Other students in my class are \(students.1.0), \(students.2.0), \(students.3.0), \(students.4.0), and \(students.5.0.uppercased()) was added.")

print("\(students.3.0) and \(students.4.0) are in the class.")


print("My Swift class is on \(classDatesString).")



/*:
 - - -
 [Table of Contents](@first) | [Previous](@previous) | [Next](@next)
 */

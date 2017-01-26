import Foundation

let amountOfBill: Float = 17.00
let amountOfBillString: String = String(format: "%.02f", amountOfBill)
let minTipPercent: Float = 0.2
let minTip: Float = 3.00

print("For a $\(amountOfBillString) bill a big tipper leaves $\((amountOfBill <= 15) ? "3.00" : "\(amountOfBill * minTipPercent)") which is \((amountOfBill <= 15) ? "\((3.00 / amountOfBill) * 100)" : "20")% for a total amount owed of $\((amountOfBill <= 15) ? "\(amountOfBill + 3.00)" : "\(amountOfBill + (amountOfBill * minTipPercent))").")

let tipAmount: Float = (amountOfBill <= 15) ? 3.00 : (amountOfBill * minTipPercent)
let tipAmountString: String = String(format: "%.02f", tipAmount)
let actualTipPercent = (tipAmount / amountOfBill) * 100
let totalBill: String = String(format: "%.02f", amountOfBill + tipAmount)

print("For a $\(amountOfBillString) bill a big tipper leaves $\(tipAmountString) which is \(actualTipPercent)% for a total amount owed of $\(totalBill).", terminator: "")
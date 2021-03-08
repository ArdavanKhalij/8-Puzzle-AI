//
//  Sudoku.swift
//  IAFP
//
//  Created by Ardavan.A Khalij on 12/12/19.
//  Copyright © 2019 Ardavan. All rights reserved.
//

import UIKit
/////////////////////////////////////////////////////////////
class Sudoku: UIViewController {
/////////////////////////////////////////////////////////////
    var input = [['','','','','','','','',''],['','','','','','','','',''],['','','','','','','','',''],['','','','','','','','',''],['','','','','','','','',''],['','','','','','','','',''],['','','','','','','','',''],['','','','','','','','',''],['','','','','','','','','']]
/////////////////////////////////////////////////////////////
    @IBOutlet weak var a00: UILabel!
    @IBOutlet weak var a01: UILabel!
    @IBOutlet weak var a02: UILabel!
    @IBOutlet weak var a03: UILabel!
    @IBOutlet weak var a04: UILabel!
    @IBOutlet weak var a05: UILabel!
    @IBOutlet weak var a06: UILabel!
    @IBOutlet weak var a07: UILabel!
    @IBOutlet weak var a08: UILabel!
    
    @IBOutlet weak var a10: UILabel!
    @IBOutlet weak var a11: UILabel!
    @IBOutlet weak var a12: UILabel!
    @IBOutlet weak var a13: UILabel!
    @IBOutlet weak var a14: UILabel!
    @IBOutlet weak var a15: UILabel!
    @IBOutlet weak var a16: UILabel!
    @IBOutlet weak var a17: UILabel!
    @IBOutlet weak var a18: UILabel!
    
    @IBOutlet weak var a20: UILabel!
    @IBOutlet weak var a21: UILabel!
    @IBOutlet weak var a22: UILabel!
    @IBOutlet weak var a23: UILabel!
    @IBOutlet weak var a24: UILabel!
    @IBOutlet weak var a25: UILabel!
    @IBOutlet weak var a26: UILabel!
    @IBOutlet weak var a27: UILabel!
    @IBOutlet weak var a28: UILabel!
    
    @IBOutlet weak var a30: UILabel!
    @IBOutlet weak var a31: UILabel!
    @IBOutlet weak var a32: UILabel!
    @IBOutlet weak var a33: UILabel!
    @IBOutlet weak var a34: UILabel!
    @IBOutlet weak var a35: UILabel!
    @IBOutlet weak var a36: UILabel!
    @IBOutlet weak var a37: UILabel!
    @IBOutlet weak var a38: UILabel!
    
    @IBOutlet weak var a40: UILabel!
    @IBOutlet weak var a41: UILabel!
    @IBOutlet weak var a42: UILabel!
    @IBOutlet weak var a43: UILabel!
    @IBOutlet weak var a44: UILabel!
    @IBOutlet weak var a45: UILabel!
    @IBOutlet weak var a46: UILabel!
    @IBOutlet weak var a47: UILabel!
    @IBOutlet weak var a48: UILabel!
    
    @IBOutlet weak var a50: UILabel!
    @IBOutlet weak var a51: UILabel!
    @IBOutlet weak var a52: UILabel!
    @IBOutlet weak var a53: UILabel!
    @IBOutlet weak var a54: UILabel!
    @IBOutlet weak var a55: UILabel!
    @IBOutlet weak var a56: UILabel!
    @IBOutlet weak var a57: UILabel!
    @IBOutlet weak var a58: UILabel!
    
    @IBOutlet weak var a60: UILabel!
    @IBOutlet weak var a61: UILabel!
    @IBOutlet weak var a62: UILabel!
    @IBOutlet weak var a63: UILabel!
    @IBOutlet weak var a64: UILabel!
    @IBOutlet weak var a65: UILabel!
    @IBOutlet weak var a66: UILabel!
    @IBOutlet weak var a67: UILabel!
    @IBOutlet weak var a68: UILabel!
    
    @IBOutlet weak var a70: UILabel!
    @IBOutlet weak var a71: UILabel!
    @IBOutlet weak var a72: UILabel!
    @IBOutlet weak var a73: UILabel!
    @IBOutlet weak var a74: UILabel!
    @IBOutlet weak var a75: UILabel!
    @IBOutlet weak var a76: UILabel!
    @IBOutlet weak var a77: UILabel!
    @IBOutlet weak var a78: UILabel!

    @IBOutlet weak var a80: UILabel!
    @IBOutlet weak var a81: UILabel!
    @IBOutlet weak var a82: UILabel!
    @IBOutlet weak var a83: UILabel!
    @IBOutlet weak var a84: UILabel!
    @IBOutlet weak var a85: UILabel!
    @IBOutlet weak var a86: UILabel!
    @IBOutlet weak var a87: UILabel!
    @IBOutlet weak var a88: UILabel!
/////////////////////////////////////////////////////////////
    @IBOutlet weak var line1: UITextField!
    @IBOutlet weak var line2: UITextField!
    @IBOutlet weak var line3: UITextField!
    @IBOutlet weak var line4: UITextField!
    @IBOutlet weak var line5: UITextField!
    @IBOutlet weak var line6: UITextField!
    @IBOutlet weak var line7: UITextField!
    @IBOutlet weak var line8: UITextField!
    @IBOutlet weak var line9: UITextField!
/////////////////////////////////////////////////////////////
    @IBOutlet weak var Solve: UIButton!
    @IBOutlet weak var Reset: UIButton!
/////////////////////////////////////////////////////////////
    @IBAction func Solve(_ sender: Any) {
        //getInput()
        var q = 0
        print("FUUUUUUUUUUUUCK!!!!!")
        print(line1.text!)
        print((line1.text!.popLast())!)
        print((line1.text!.popLast())!)
        in
        print(line2.text!)
        print(line3.text!)
        print(line4.text!)
        print(line5.text!)
        print(line6.text!)
        print(line7.text!)
        print(line8.text!)
        print(line9.text!)
        print(input)
        input[0][0
        print("FUUUUUUUUUUUUCK!!!!!")
        if line1.text!.count != 9 || line2.text!.count != 9 || line3.text!.count != 9 || line4.text!.count != 9 || line5.text!.count != 9 || line6.text!.count != 9 || line7.text!.count != 9 || line8.text!.count != 9 || line9.text!.count != 9 {
            ShowEmpty()
            input.removeAll()
            displayMyAlertMessage(userMessage: "Please Enter the inputs correctly.")
            return
        }else{
            //getInput()
            for i in 1...9{
                for j in 0...8 {
                    for k in 0...8{
                        if input[j][k] == (i) {
                            q=q+1
                        }
                    }
                    if q>1 {
                        q = 0
                        input.removeAll()
                        displayMyAlertMessage(userMessage: "Please Enter the inputs correctly.")
                        return
                    }
                    q = 0
                }
            }
            for i in 1...9{
                for j in 0...8 {
                    for k in 0...8 {
                        if input[k][j] == (i) {
                            q=q+1
                        }
                    }
                    if q>1 {
                        q = 0
                        input.removeAll()
                        displayMyAlertMessage(userMessage: "Please Enter the inputs correctly.")
                        return
                    }
                    q = 0
                }
            }
            q=0
            for i in 1...9 {
                for j in 0...2 {
                    for k in 0...2 {
                        if input[0+j*3][0+k*3]==(i) {
                            q=q+1
                        }
                        if input[1+j*3][1+k*3]==(i) {
                            q=q+1
                        }
                        if input[2+j*3][2+k*3]==(i) {
                            q=q+1
                        }
                        if input[0+j*3][0+k*3]==(i) {
                            q=q+1
                        }
                        if input[1+j*3][1+k*3]==(i) {
                            q=q+1
                        }
                        if input[2+j*3][2+k*3]==(i) {
                            q=q+1
                        }
                        if input[0+j*3][0+k*3]==(i) {
                            q=q+1
                        }
                        if input[1+j*3][1+k*3]==(i) {
                            q=q+1
                        }
                        if input[2+j*3][2+k*3]==(i) {
                            q=q+1
                        }
                        if q>1 {
                            displayMyAlertMessage(userMessage: "Please Enter the inputs correctly.")
                            input.removeAll()
                            return
                        }else{
                            q=0
                        }
                    }
                }
            }
        }
        Show()
    }
/////////////////////////////////////////////////////////////
    @IBAction func Reset(_ sender: Any) {
        ShowEmpty()
        displayMyAlertMessage(userMessage: "The Sudoku Table is Clean Now")
    }
/////////////////////////////////////////////////////////////
    override func viewDidLoad() {
        super.viewDidLoad()
        Reset.layer.cornerRadius=7.0
        Solve.layer.cornerRadius=7.0
        ShowEmpty()
    }
/////////////////////////////////////////////////////////////
    func displayMyAlertMessage(userMessage:String){
        let myAlert = UIAlertController(title: "Attention!", message: userMessage, preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
        myAlert.addAction(okAction)
        self.present(myAlert, animated: true, completion: nil)
    }
/////////////////////////////////////////////////////////////
    func getInput() {
//        var a = ["","","","","","","","",""]
         input[0][0] = Int(((line1.text!.popFirst())!)
                input[0][1] = Int((line1.text!.popFirst())!)
                input[0][2] = Int((line1.text!.popFirst())!)
                input[0][3] = Int((line1.text!.popFirst())!)
                input[0][4] = Int((line1.text!.popFirst())!)
                input[0][5] = Int((line1.text!.popFirst())!)
                input[0][6] = Int((line1.text!.popFirst())!)
                input[0][7] = Int((line1.text!.popFirst())!)
                input[0][8] = Int((line1.text!.popFirst())!)
                
                input[1][0] = Int((line2.text!.popFirst())!)
                input[1][1] = Int((line2.text!.popFirst())!)
                input[1][2] = Int((line2.text!.popFirst())!)
                input[1][3] = Int((line2.text!.popFirst())!)
                input[1][4] = Int((line2.text!.popFirst())!)
                input[1][5] = Int((line2.text!.popFirst())!)
                input[1][6] = Int((line2.text!.popFirst())!)
                input[1][7] = Int((line2.text!.popFirst())!)
                input[1][8] = Int((line2.text!.popFirst())!)
                
                input[2][0] = Int((line3.text!.popFirst())!)
                input[2][1] = Int((line3.text!.popFirst())!)
                input[2][2] = Int((line3.text!.popFirst())!)
                input[2][3] = Int((line3.text!.popFirst())!)
                input[2][4] = Int((line3.text!.popFirst())!)
                input[2][5] = Int((line3.text!.popFirst())!)
                input[2][6] = Int((line3.text!.popFirst())!)
                input[2][7] = Int((line3.text!.popFirst())!)
                input[2][8] = Int((line3.text!.popFirst())!)
                
                input[3][0] = Int((line4.text!.popFirst())!)
                input[3][1] = Int((line4.text!.popFirst())!)
                input[3][2] = Int((line4.text!.popFirst())!)
                input[3][3] = Int((line4.text!.popFirst())!)
                input[3][4] = Int((line4.text!.popFirst())!)
                input[3][5] = Int((line4.text!.popFirst())!)
                input[3][6] = Int((line4.text!.popFirst())!)
                input[3][7] = Int((line4.text!.popFirst())!)
                input[3][8] = Int((line4.text!.popFirst())!)
                
                input[4][0] = Int((line5.text!.popFirst())!)
                input[4][1] = Int((line5.text!.popFirst())!)
                input[4][2] = Int((line5.text!.popFirst())!)
                input[4][3] = Int((line5.text!.popFirst())!)
                input[4][4] = Int((line5.text!.popFirst())!)
                input[4][5] = Int((line5.text!.popFirst())!)
                input[4][6] = Int((line5.text!.popFirst())!)
                input[4][7] = Int((line5.text!.popFirst())!)
                input[4][8] = Int((line5.text!.popFirst())!)
                
                input[5][0] = Int((line6.text!.popFirst())!)
                input[5][1] = Int((line6.text!.popFirst())!)
                input[5][2] = Int((line6.text!.popFirst())!)
                input[5][3] = Int((line6.text!.popFirst())!)
                input[5][4] = Int((line6.text!.popFirst())!)
                input[5][5] = Int((line6.text!.popFirst())!)
                input[5][6] = Int((line6.text!.popFirst())!)
                input[5][7] = Int((line6.text!.popFirst())!)
                input[5][8] = Int((line6.text!.popFirst())!)
                
                input[6][0] = Int((line7.text!.popFirst())!)
                input[6][1] = Int((line7.text!.popFirst())!)
                input[6][2] = Int((line7.text!.popFirst())!)
                input[6][3] = Int((line7.text!.popFirst())!)
                input[6][4] = Int((line7.text!.popFirst())!)
                input[6][5] = Int((line7.text!.popFirst())!)
                input[6][6] = Int((line7.text!.popFirst())!)
                input[6][7] = Int((line7.text!.popFirst())!)
                input[6][8] = Int((line7.text!.popFirst())!)
                
                input[7][0] = Int((line8.text!.popFirst())!)
                input[7][1] = Int((line8.text!.popFirst())!)
                input[7][2] = Int((line8.text!.popFirst())!)
                input[7][3] = Int((line8.text!.popFirst())!)
                input[7][4] = Int((line8.text!.popFirst())!)
                input[7][5] = Int((line8.text!.popFirst())!)
                input[7][6] = Int((line8.text!.popFirst())!)
                input[7][7] = Int((line8.text!.popFirst())!)
                input[7][8] = Int((line8.text!.popFirst())!)
                
                input[8][0] = Int((line9.text!.popFirst())!)
                input[8][1] = Int((line9.text!.popFirst())!)
                input[8][2] = Int((line9.text!.popFirst())!)
                input[8][3] = Int((line9.text!.popFirst())!)
                input[8][4] = Int((line9.text!.popFirst())!)
                input[8][5] = Int((line9.text!.popFirst())!)
                input[8][6] = Int((line9.text!.popFirst())!)
                input[8][7] = Int((line9.text!.popFirst())!)
                input[8][8] = Int((line9.text!.popFirst())!)
        //
//        a[1] = line2.text!
//        a[2] = line3.text!
//        a[3] = line4.text!
//        a[4] = line5.text!
//        a[5] = line6.text!
//        a[6] = line7.text!
//        a[7] = line8.text!
//        a[8] = line9.text!
//
//        for i in 0...8 {
//            input[i][0] = a[i][0]
//            input[i][1] = a[i][1]
//            input[i][2] = a[i][2]
//            input[i][3] = a[i][3]
//            input[i][4] = a[i][4]
//            input[i][5] = a[i][5]
//            input[i][6] = a[i][6]
//            input[i][7] = a[i][7]
//            input[i][8] = a[i][8]
//        }
//
    }
/////////////////////////////////////////////////////////////
    func ShowEmpty() {
        line1.text = ""
        line2.text = ""
        line3.text = ""
        line4.text = ""
        line5.text = ""
        line6.text = ""
        line7.text = ""
        line8.text = ""
        line9.text = ""
        
        input.removeAll()
        
        a00.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a00.text = ""
        a01.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a01.text = ""
        a02.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a02.text = ""
        a03.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a03.text = ""
        a04.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a04.text = ""
        a05.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a05.text = ""
        a06.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a06.text = ""
        a07.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a07.text = ""
        a08.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a08.text = ""
        
        a10.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a10.text = ""
        a11.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a11.text = ""
        a12.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a12.text = ""
        a13.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a13.text = ""
        a14.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a14.text = ""
        a15.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a15.text = ""
        a16.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a16.text = ""
        a17.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a17.text = ""
        a18.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a18.text = ""
        
        a20.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a20.text = ""
        a21.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a21.text = ""
        a22.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a22.text = ""
        a23.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a23.text = ""
        a24.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a24.text = ""
        a25.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a25.text = ""
        a26.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a26.text = ""
        a27.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a27.text = ""
        a28.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        
        a28.text = ""
        a30.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a30.text = ""
        a31.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a31.text = ""
        a32.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a32.text = ""
        a33.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a33.text = ""
        a34.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a34.text = ""
        a35.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a35.text = ""
        a36.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a36.text = ""
        a37.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a37.text = ""
        a38.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a38.text = ""
        
        a40.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a40.text = ""
        a41.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a41.text = ""
        a42.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a42.text = ""
        a43.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a43.text = ""
        a44.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a44.text = ""
        a45.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a45.text = ""
        a46.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a46.text = ""
        a47.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a47.text = ""
        a48.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a48.text = ""
        
        a50.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a50.text = ""
        a51.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a51.text = ""
        a52.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a52.text = ""
        a53.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a53.text = ""
        a54.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a54.text = ""
        a55.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a55.text = ""
        a56.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a56.text = ""
        a57.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a57.text = ""
        a58.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a58.text = ""
        
        a60.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a60.text = ""
        a61.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a61.text = ""
        a62.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a62.text = ""
        a63.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a63.text = ""
        a64.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a64.text = ""
        a65.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a65.text = ""
        a66.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a66.text = ""
        a67.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a67.text = ""
        a68.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a68.text = ""
        
        a70.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a70.text = ""
        a71.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a71.text = ""
        a72.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a72.text = ""
        a73.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a73.text = ""
        a74.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a74.text = ""
        a75.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a75.text = ""
        a76.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a76.text = ""
        a77.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a77.text = ""
        a78.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a78.text = ""
        
        a80.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a80.text = ""
        a81.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a81.text = ""
        a82.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a82.text = ""
        a83.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a83.text = ""
        a84.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a84.text = ""
        a85.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
        a85.text = ""
        a86.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a86.text = ""
        a87.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a87.text = ""
        a88.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
        a88.text = ""
    }
/////////////////////////////////////////////////////////////
    func Show(){
        ///
        if input[0][0] == 0{
            a00.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a00.text = ""
        }
        else{
            a00.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a00.text = String(input[0][0])
        }
        if input[0][1] == 0{
            a01.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a01.text = ""
        }
        else{
            a01.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a01.text = String(input[0][1])
        }
        if input[0][2] == 0{
            a02.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a02.text = ""
        }
        else{
            a02.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a02.text = String(input[0][2])
        }
        if input[0][3] == 0{
            a03.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a03.text = ""
        }
        else{
            a03.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a03.text = String(input[0][3])
        }
        if input[0][4] == 0{
            a04.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a04.text = ""
        }
        else{
            a04.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a04.text = String(input[0][4])
        }
        if input[0][5] == 0{
            a05.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a05.text = ""
        }
        else{
            a05.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a05.text = String(input[0][5])
        }
        if input[0][6] == 0{
            a06.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a06.text = ""
        }
        else{
            a06.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a06.text = String(input[0][6])
        }
        if input[0][7] == 0{
            a07.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a07.text = ""
        }
        else{
            a07.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a07.text = String(input[0][7])
        }
        if input[0][8] == 0{
            a08.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a08.text = ""
        }
        else{
            a08.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a08.text = String(input[0][8])
        }
        ///
        if input[1][0] == 0{
            a10.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a10.text = ""
        }
        else{
            a10.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a10.text = String(input[1][0])
        }
        if input[1][1] == 0{
            a11.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a11.text = ""
        }
        else{
            a11.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a11.text = String(input[1][1])
        }
        if input[1][2] == 0{
            a12.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a12.text = ""
        }
        else{
            a12.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a12.text = String(input[1][2])
        }
        if input[1][3] == 0{
            a13.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a13.text = ""
        }
        else{
            a13.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a13.text = String(input[1][3])
        }
        if input[1][4] == 0{
            a14.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a14.text = ""
        }
        else{
            a14.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a14.text = String(input[1][4])
        }
        if input[1][5] == 0{
            a15.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a15.text = ""
        }
        else{
            a15.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a15.text = String(input[1][5])
        }
        if input[1][6] == 0{
            a16.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a16.text = ""
        }
        else{
            a16.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a16.text = String(input[1][6])
        }
        if input[1][7] == 0{
            a17.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a17.text = ""
        }
        else{
            a17.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a17.text = String(input[1][7])
        }
        if input[1][8] == 0{
            a18.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a18.text = ""
        }
        else{
            a18.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a18.text = String(input[1][8])
        }
        ///
        if input[2][0] == 0{
            a20.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a20.text = ""
        }
        else{
            a20.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a20.text = String(input[2][0])
        }
        if input[2][1] == 0{
            a21.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a21.text = ""
        }
        else{
            a21.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a21.text = String(input[2][1])
        }
        if input[2][2] == 0{
            a22.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a22.text = ""
        }
        else{
            a22.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a22.text = String(input[2][2])
        }
        if input[2][3] == 0{
            a23.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a23.text = ""
        }
        else{
            a23.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a23.text = String(input[2][3])
        }
        if input[2][4] == 0{
            a24.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a24.text = ""
        }
        else{
            a24.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a24.text = String(input[2][4])
        }
        if input[2][5] == 0{
            a25.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a25.text = ""
        }
        else{
            a25.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a25.text = String(input[2][5])
        }
        if input[2][6] == 0{
            a26.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a26.text = ""
        }
        else{
            a26.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a26.text = String(input[2][6])
        }
        if input[2][7] == 0{
            a27.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a27.text = ""
        }
        else{
            a27.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a27.text = String(input[2][7])
        }
        if input[2][8] == 0{
            a28.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a28.text = ""
        }
        else{
            a28.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a28.text = String(input[2][8])
        }
        ///
        if input[3][0] == 0{
            a30.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a30.text = ""
        }
        else{
            a30.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a30.text = String(input[3][0])
        }
        if input[3][1] == 0{
            a31.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a31.text = ""
        }
        else{
            a31.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a31.text = String(input[3][1])
        }
        if input[3][2] == 0{
            a32.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a32.text = ""
        }
        else{
            a32.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a32.text = String(input[3][2])
        }
        if input[3][3] == 0{
            a33.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a33.text = ""
        }
        else{
            a33.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a33.text = String(input[3][3])
        }
        if input[3][4] == 0{
            a34.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a34.text = ""
        }
        else{
            a34.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a34.text = String(input[3][4])
        }
        if input[3][5] == 0{
            a35.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a35.text = ""
        }
        else{
            a35.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a35.text = String(input[3][5])
        }
        if input[3][6] == 0{
            a36.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a36.text = ""
        }
        else{
            a36.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a36.text = String(input[3][6])
        }
        if input[3][7] == 0{
            a37.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a37.text = ""
        }
        else{
            a37.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a37.text = String(input[3][7])
        }
        if input[3][8] == 0{
            a38.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a38.text = ""
        }
        else{
            a38.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a38.text = String(input[3][8])
        }
        ///
        if input[4][0] == 0{
            a40.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a40.text = ""
        }
        else{
            a40.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a40.text = String(input[4][0])
        }
        if input[4][1] == 0{
            a41.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a41.text = ""
        }
        else{
            a41.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a41.text = String(input[4][1])
        }
        if input[4][2] == 0{
            a42.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a42.text = ""
        }
        else{
            a42.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a42.text = String(input[4][2])
        }
        if input[4][3] == 0{
            a43.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a43.text = ""
        }
        else{
            a43.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a43.text = String(input[4][3])
        }
        if input[4][4] == 0{
            a44.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a44.text = ""
        }
        else{
            a44.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a44.text = String(input[4][4])
        }
        if input[4][5] == 0{
            a45.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a45.text = ""
        }
        else{
            a45.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a45.text = String(input[4][5])
        }
        if input[4][6] == 0{
            a46.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a46.text = ""
        }
        else{
            a46.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a46.text = String(input[4][6])
        }
        if input[4][7] == 0{
            a47.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a47.text = ""
        }
        else{
            a47.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a47.text = String(input[4][7])
        }
        if input[4][8] == 0{
            a48.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a48.text = ""
        }
        else{
            a48.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a48.text = String(input[4][8])
        }
        ///
        if input[5][0] == 0{
            a50.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a50.text = ""
        }
        else{
            a50.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a50.text = String(input[5][0])
        }
        if input[5][1] == 0{
            a51.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a51.text = ""
        }
        else{
            a51.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a51.text = String(input[5][1])
        }
        if input[5][2] == 0{
            a52.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a52.text = ""
        }
        else{
            a52.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a52.text = String(input[5][2])
        }
        if input[5][3] == 0{
            a53.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a53.text = ""
        }
        else{
            a53.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a53.text = String(input[5][3])
        }
        if input[5][4] == 0{
            a54.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a54.text = ""
        }
        else{
            a54.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a54.text = String(input[5][4])
        }
        if input[5][5] == 0{
            a55.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a55.text = ""
        }
        else{
            a55.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a55.text = String(input[5][5])
        }
        if input[5][6] == 0{
            a56.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a56.text = ""
        }
        else{
            a56.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a56.text = String(input[5][6])
        }
        if input[5][7] == 0{
            a57.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a57.text = ""
        }
        else{
            a57.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a57.text = String(input[5][7])
        }
        if input[5][8] == 0{
            a58.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a58.text = ""
        }
        else{
            a58.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a58.text = String(input[5][8])
        }
        ///
        if input[6][0] == 0{
            a60.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a60.text = ""
        }
        else{
            a60.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a60.text = String(input[6][0])
        }
        if input[6][1] == 0{
            a61.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a61.text = ""
        }
        else{
            a61.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a61.text = String(input[6][1])
        }
        if input[6][2] == 0{
            a62.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a62.text = ""
        }
        else{
            a62.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a62.text = String(input[6][2])
        }
        if input[6][3] == 0{
            a63.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a63.text = ""
        }
        else{
            a63.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a63.text = String(input[6][3])
        }
        if input[6][4] == 0{
            a64.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a64.text = ""
        }
        else{
            a64.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a64.text = String(input[6][4])
        }
        if input[6][5] == 0{
            a65.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a65.text = ""
        }
        else{
            a65.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a65.text = String(input[6][5])
        }
        if input[6][6] == 0{
            a66.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a66.text = ""
        }
        else{
            a66.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a66.text = String(input[6][6])
        }
        if input[6][7] == 0{
            a67.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a67.text = ""
        }
        else{
            a67.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a67.text = String(input[6][7])
        }
        if input[6][8] == 0{
            a68.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a68.text = ""
        }
        else{
            a68.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a68.text = String(input[6][8])
        }
        ///
        if input[7][0] == 0{
            a70.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a70.text = ""
        }
        else{
            a70.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a70.text = String(input[7][0])
        }
        if input[7][1] == 0{
            a71.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a71.text = ""
        }
        else{
            a71.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a71.text = String(input[7][1])
        }
        if input[7][2] == 0{
            a72.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a72.text = ""
        }
        else{
            a72.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a72.text = String(input[7][2])
        }
        if input[7][3] == 0{
            a73.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a73.text = ""
        }
        else{
            a73.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a73.text = String(input[7][3])
        }
        if input[7][4] == 0{
            a74.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a74.text = ""
        }
        else{
            a74.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a74.text = String(input[7][4])
        }
        if input[7][5] == 0{
            a75.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a75.text = ""
        }
        else{
            a75.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a75.text = String(input[7][5])
        }
        if input[7][6] == 0{
            a76.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a76.text = ""
        }
        else{
            a76.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a76.text = String(input[7][6])
        }
        if input[7][7] == 0{
            a77.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a77.text = ""
        }
        else{
            a77.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a77.text = String(input[7][7])
        }
        if input[7][8] == 0{
            a78.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a78.text = ""
        }
        else{
            a78.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a78.text = String(input[7][8])
        }
        ///
        if input[8][0] == 0{
            a80.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a80.text = ""
        }
        else{
            a80.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a80.text = String(input[8][0])
        }
        if input[8][1] == 0{
            a81.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a81.text = ""
        }
        else{
            a81.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a81.text = String(input[8][1])
        }
        if input[8][2] == 0{
            a82.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a82.text = ""
        }
        else{
            a82.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a82.text = String(input[8][2])
        }
        if input[8][3] == 0{
            a83.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a83.text = ""
        }
        else{
            a83.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a83.text = String(input[8][3])
        }
        if input[8][4] == 0{
            a84.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a84.text = ""
        }
        else{
            a84.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a84.text = String(input[8][4])
        }
        if input[8][5] == 0{
            a85.backgroundColor = #colorLiteral(red: 0.1225699336, green: 0.1225699336, blue: 0.1225699336, alpha: 1)
            a85.text = ""
        }
        else{
            a85.backgroundColor = #colorLiteral(red: 0.8086665359, green: 0.3173453372, blue: 0.03692937162, alpha: 1)
            a85.text = String(input[8][5])
        }
        if input[8][6] == 0{
            a86.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a86.text = ""
        }
        else{
            a86.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a86.text = String(input[8][6])
        }
        if input[8][7] == 0{
            a87.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a87.text = ""
        }
        else{
            a87.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a87.text = String(input[8][7])
        }
        if input[8][8] == 0{
            a88.backgroundColor = #colorLiteral(red: 0.08626427501, green: 0.08628026396, blue: 0.08625883609, alpha: 1)
            a88.text = ""
        }
        else{
            a88.backgroundColor = #colorLiteral(red: 0.9440899491, green: 0.3731040061, blue: 0.0453748703, alpha: 1)
            a88.text = String(input[8][8])
        }
    }
}
/////////////////////////////////////////////////////////////
extension String {
  var length: Int {
    return count
  }
  subscript (i: Int) -> String {
    return self[i ..< i + 1]
  }
  func substring(fromIndex: Int) -> String {
    return self[min(fromIndex, length) ..< length]
  }
  func substring(toIndex: Int) -> String {
    return self[0 ..< max(0, toIndex)]
  }
  subscript (r: Range<Int>) -> String {
    let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)),
                                        upper: min(length, max(0, r.upperBound))))
    let start = index(startIndex, offsetBy: range.lowerBound)
    let end = index(start, offsetBy: range.upperBound - range.lowerBound)
    return String(self[start ..< end])
  }
}

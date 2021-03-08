//
//  FirstViewController.swift
//  IAFP
//
//  Created by ardavan on 8/15/1398 AP.
//  Copyright © 1398 Ardavan. All rights reserved.
//

import UIKit

var possibleNewBoards = [[Int]]()
var boardsThatRemoved = [[Int]]()
var showingBoards = [[Int]]()
var input : Int = 1
var a = [1, 2, 3, 4, 0, 5, 6, 7, 8]

class FirstViewController: UIViewController {
    var activityIndicator:UIActivityIndicatorView = UIActivityIndicatorView()
    @IBOutlet var show1: UILabel!
    @IBOutlet var show2: UILabel!
    @IBOutlet var show3: UILabel!
    @IBOutlet var show4: UILabel!
    @IBOutlet var show5: UILabel!
    @IBOutlet var show6: UILabel!
    @IBOutlet var show7: UILabel!
    @IBOutlet var show8: UILabel!
    @IBOutlet var show0: UILabel!
    @IBOutlet var resetShow: UIButton!
    @IBOutlet var solveShow: UIButton!
    @IBOutlet var solveShow2: UIButton!
    @IBOutlet var solveShow3: UIButton!
    @IBOutlet var randomInputShow: UIButton!
    @IBOutlet weak var CancelShow: UIButton!
    @IBAction func Reset(_ sender: Any) {
        show1.text=""
        show2.text=""
        show3.text=""
        show4.text=""
        show5.text=""
        show6.text=""
        show7.text=""
        show8.text=""
        show0.text=""
        input=1
        show0.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
        show1.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
        show2.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
        show3.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
        show4.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
        show5.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
        show6.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
        show7.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
        show8.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
        for i in 0...8{
            a[i]=0
        }
        possibleNewBoards.removeAll()
        boardsThatRemoved.removeAll()
        showingBoards.removeAll()
    }
    @IBAction func a1(_ sender: Any) {
        if input==0 {
            show1.text=""
            show1.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
            a[0]=0
        }
        else{
            a[0]=input
            show1.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
            show1.text = String(input)
        }
        input=input+1
        if input==9 {
            input=0
        }
    }
    @IBAction func FileInput(_ sender: Any) {
        let FILE = "MyInput.txt"
        a=readFromFile(aa: FILE)
        if a[1]==0 {
            show1.text=""
            show1.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
        }
        else{
            show1.text=String(a[1])
            show1.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
        }
        if a[2]==0 {
            show2.text=""
            show2.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
        }
        else{
            show2.text=String(a[2])
            show2.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
        }
        if a[3]==0 {
            show3.text=""
            show3.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
        }
        else{
            show3.text=String(a[3])
            show3.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
        }
        if a[4]==0 {
            show4.text=""
            show4.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
        }
        else{
            show4.text=String(a[4])
            show4.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
        }
        if a[5]==0 {
            show0.text=""
            show0.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
        }
        else{
            show0.text=String(a[5])
            show0.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
        }
        if a[6]==0 {
            show5.text=""
            show5.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
        }
        else{
            show5.text=String(a[6])
            show5.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
        }
        if a[7]==0 {
            show6.text=""
            show6.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
        }
        else{
            show6.text=String(a[7])
            show6.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
        }
        if a[8]==0 {
            show7.text=""
            show7.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
        }
        else{
            show7.text=String(a[8])
            show7.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
        }
        if a[0]==0 {
            show8.text=""
            show8.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
        }
        else{
            show8.text=String(a[0])
            show8.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
        }
    }
    @IBAction func a2(_ sender: Any) {
        if input==0 {
            show2.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
            a[1]=0
            show2.text=""
        }
        else{
            show2.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
            a[1]=input
            show2.text = String(input)
        }
        input=input+1
        if input==9 {
            input=0
        }
    }
    @IBAction func a3(_ sender: Any) {
        if input==0 {
            show3.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
            a[2]=0
            show3.text=""
        }
        else{
            show3.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
            a[2]=input
            show3.text = String(input)
        }
        input=input+1
        if input==9 {
            input=0
        }
    }
    @IBAction func a4(_ sender: Any) {
        if input==0 {
            show4.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
            a[3]=0
            show4.text=""
        }
        else{
            show4.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
            a[3]=input
            show4.text = String(input)
        }
        input=input+1
        if input==9 {
            input=0
        }
    }
    @IBAction func a5(_ sender: Any) {
        if input==0 {
            show0.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
            a[4]=0
            show0.text=""
        }
        else{
            show0.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
            a[4]=input
            show0.text = String(input)
        }
        input=input+1
        if input==9 {
            input=0
        }
    }
    @IBAction func a6(_ sender: Any) {
        if input==0 {
            show5.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
            a[5]=0
            show5.text=""
        }
        else{
            show5.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
            a[5]=input
            show5.text = String(input)
        }
        input=input+1
        if input==9 {
            input=0
        }
    }
    @IBAction func a7(_ sender: Any) {
        if input==0 {
            show6.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
            a[6]=0
            show6.text=""
        }
        else{
            show6.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
            a[6]=input
            show6.text = String(input)
        }
        input=input+1
        if input==9 {
            input=0
        }
    }
    @IBAction func a8(_ sender: Any) {
        if input==0 {
            show7.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
            a[7]=0
            show7.text=""
        }
        else{
            show7.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
            a[7]=input
            show7.text = String(input)
        }
        input=input+1
        if input==9 {
            input=0
        }
    }
    @IBAction func a9(_ sender: Any) {
        if input==0 {
            show8.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
            a[8]=0
            show8.text=""
        }
        else{
            show8.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
            a[8]=input
            show8.text = String(input)
        }
        input=input+1
        if input==9 {
            input=0
        }
    }
////////////////////////////////////////////////////////
    @IBAction func Solve(_ sender: Any) {
//        activityIndicator.center=self.view.center
//        activityIndicator.hidesWhenStopped=true
//        activityIndicator.style=UIActivityIndicatorView.Style.gray
//        view.addSubview(activityIndicator)
//        activityIndicator.startAnimating()
//        UIApplication.shared.beginIgnoringInteractionEvents()
        var isThePuzzleCorrect=0
        for i in 0...8{
            for j in 0...8{
                if a[j]==i{
                    isThePuzzleCorrect=isThePuzzleCorrect+1
                    break
                }
            }
        }
        if isThePuzzleCorrect==9{
///////////////////////////////////////
////////////// Main Code //////////////
            Show(bord: solveByBFS(p: a))
            possibleNewBoards.removeAll()
            //Show1(bord: showingBoards)
////////////// Main Code //////////////
///////////////////////////////////////
        }else{
            displayMyAlertMessage(userMessage: "Please enter the inputs correctly.")
        }
//
//        activityIndicator.stopAnimating()
//        UIApplication.shared.endIgnoringInteractionEvents()
    }
    @IBAction func Solve2(_ sender: Any) {
//        activityIndicator.center=self.view.center
//        activityIndicator.hidesWhenStopped=true
//        activityIndicator.style=UIActivityIndicatorView.Style.gray
//        view.addSubview(activityIndicator)
//        activityIndicator.startAnimating()
//       // UIApplication.shared.beginIgnoringInteractionEvents()
        var isThePuzzleCorrect=0
        for i in 0...8{
            for j in 0...8{
                if a[j]==i{
                    isThePuzzleCorrect=isThePuzzleCorrect+1
                    break
                }
            }
        }
        if isThePuzzleCorrect==9{
///////////////////////////////////////////////
////////////// Main Code //////////////
            print(a)
            solveByDFS(p: a)
            possibleNewBoards.removeAll()
////////////// Main Code //////////////
///////////////////////////////////////////////
        }
        else{
            displayMyAlertMessage(userMessage: "Please enter the inputs correctly.")
        }
    }
    @IBAction func Solve3(_ sender: Any) {
        var isThePuzzleCorrect=0
        for i in 0...8{
            for j in 0...8{
                if a[j]==i{
                    isThePuzzleCorrect=isThePuzzleCorrect+1
                    break
                }
            }
        }
        if isThePuzzleCorrect==9{
            ///////////////////////////////////////
            ////////////// Main Code //////////////
            print(a)
            solveByIDS(p: a)
            possibleNewBoards.removeAll()
            ////////////// Main Code //////////////
            ///////////////////////////////////////
        }else{
            displayMyAlertMessage(userMessage: "Please enter the inputs correctly.")
        }
    }
////////////////////////////////////////////////////////
    @IBAction func RandomInput(_ sender: Any) {
        var k=8
        var randomInputsChoosable = [0, 1, 2, 3, 4, 5, 6, 7, 8]
        possibleNewBoards.removeAll()
        boardsThatRemoved.removeAll()
        showingBoards.removeAll()
        for i in 0...8{
            a[i]=randomInputsChoosable.randomElement()!
            for j in 0...k{
                if a[i]==randomInputsChoosable[j]{
                    randomInputsChoosable.remove(at: j)
                    k=k-1
                    break
                }
            }
        }
        if a[1]==0 {
            show1.text=""
            show1.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
        }
        else{
            show1.text=String(a[1])
            show1.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
        }
        if a[2]==0 {
            show2.text=""
            show2.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
        }
        else{
            show2.text=String(a[2])
            show2.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
        }
        if a[3]==0 {
            show3.text=""
            show3.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
        }
        else{
            show3.text=String(a[3])
            show3.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
        }
        if a[4]==0 {
            show4.text=""
            show4.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
        }
        else{
            show4.text=String(a[4])
            show4.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
        }
        if a[5]==0 {
            show0.text=""
            show0.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
        }
        else{
            show0.text=String(a[5])
            show0.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
        }
        if a[6]==0 {
            show5.text=""
            show5.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
        }
        else{
            show5.text=String(a[6])
            show5.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
        }
        if a[7]==0 {
            show6.text=""
            show6.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
        }
        else{
            show6.text=String(a[7])
            show6.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
        }
        if a[8]==0 {
            show7.text=""
            show7.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
        }
        else{
            show7.text=String(a[8])
            show7.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
        }
        if a[0]==0 {
            show8.text=""
            show8.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
        }
        else{
            show8.text=String(a[0])
            show8.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetShow.layer.cornerRadius=7.0
        solveShow.layer.cornerRadius=7.0
        randomInputShow.layer.cornerRadius=7.0
        solveShow2.layer.cornerRadius=7.0
        solveShow3.layer.cornerRadius=7.0
        CancelShow.layer.cornerRadius=7.0
    }
    
    func displayMyAlertMessage(userMessage:String){
        let myAlert = UIAlertController(title: "Attention!", message: userMessage, preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
        myAlert.addAction(okAction)
        self.present(myAlert, animated: true, completion: nil)
    }
    func Show(bord:[Int]){
        if bord[0]==0 {
            show1.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
            show1.text=""
        }else{
            show1.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
            show1.text=String(bord[0])
        }
        if bord[1]==0 {
            show2.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
            show3.text=""
        }else{
            show2.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
            show2.text=String(bord[1])
        }
        if bord[2]==0 {
            show3.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
            show3.text=""
        }else{
            show3.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
            show3.text=String(bord[2])
        }
        if bord[3]==0 {
            show4.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
            show4.text=""
        }else{
            show4.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
            show4.text=String(bord[3])
        }
        if bord[4]==0 {
            show0.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
            show0.text=""
        }else{
            show0.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
            show0.text=String(bord[4])
        }
        if bord[5]==0 {
            show5.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
            show5.text=""
        }else{
            show5.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
            show5.text=String(bord[5])
        }
        if bord[6]==0 {
            show6.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
            show6.text=""
        }else{
            show6.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
            show6.text=String(bord[6])
        }
        if bord[7]==0 {
            show7.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
            show7.text=""
        }else{
            show7.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
            show7.text=String(bord[7])
        }
        if bord[8]==0 {
            show8.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
            show8.text=""
        }else{
            show8.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
            show8.text=String(bord[8])
        }
    }
    func Show1(bord:[[Int]]){
            let seconds = 0.5
            for i in 0...bord.count-1{
                DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                    if bord[i][0]==0 {
                        self.show1.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
                        self.show1.text=""
                    }else{
                        self.show1.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
                        self.show1.text=String(bord[i][0])
                    }
                    if bord[i][1]==0 {
                        self.show2.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
                        self.show3.text=""
                    }else{
                        self.show2.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
                        self.show2.text=String(bord[i][1])
                    }
                    if bord[i][2]==0 {
                        self.show3.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
                        self.show3.text=""
                    }else{
                        self.show3.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
                        self.show3.text=String(bord[i][2])
                    }
                    if bord[i][3]==0 {
                        self.show4.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
                        self.show4.text=""
                    }else{
                        self.show4.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
                        self.show4.text=String(bord[i][3])
                    }
                    if bord[i][4]==0 {
                        self.show0.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
                        self.show0.text=""
                    }else{
                        self.show0.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
                        self.show0.text=String(bord[i][4])
                    }
                    if bord[i][5]==0 {
                        self.show5.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
                        self.show5.text=""
                    }else{
                        self.show5.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
                        self.show5.text=String(bord[i][5])
                    }
                    if bord[i][6]==0 {
                        self.show6.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
                        self.show6.text=""
                    }else{
                        self.show6.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
                        self.show6.text=String(bord[i][6])
                    }
                    if bord[i][7]==0 {
                        self.show7.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
                        self.show7.text=""
                    }else{
                        self.show7.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
                        self.show7.text=String(bord[i][7])
                    }
                    if bord[i][8]==0 {
                        self.show8.backgroundColor=#colorLiteral(red: 0.08599698604, green: 0.08599698604, blue: 0.08599698604, alpha: 1)
                        self.show8.text=""
                    }else{
                        self.show8.backgroundColor=#colorLiteral(red: 0.9441822652, green: 0.3724874978, blue: 0.0829549153, alpha: 1)
                        self.show8.text=String(bord[i][8])
                    }
                }
            }
        showingBoards.removeAll()
        possibleNewBoards.removeAll()
    }
////////////////////////////////////////////////
    func solveByDFS(p: [Int]) {
        var myPuzzles = [[Int]]()
        if p==[1,2,3,4,0,5,6,7,8] {
            Show(bord: p)
            return
        }
        myPuzzles=puzzle(aa: p)
        var i=0;
        while i<myPuzzles.count {
            if myPuzzles[i]==[1,2,3,4,0,5,6,7,8] {
                myPuzzles.removeSubrange((i+1)...)
                Show1(bord: myPuzzles)
                //myPuzzles.removeAll()
                displayMyAlertMessage(userMessage: "Problem Solved with DFS")
                return
            }
            else {
                //Show(bord: myPuzzles[i])
                //for j in 0...1000000{}
                myPuzzles=puzzle(aa: myPuzzles[i])
                print(myPuzzles)
                print("**********************")
                myPuzzles.remove(at: i)
                
            }
            i=i+1
        }
    }
////////////////////////////////////////////////
        func solveByIDS(p: [Int]) {
            var myPuzzles = [[Int]]()
            if p==[1,2,3,4,0,5,6,7,8] {
                Show(bord: p)
                return
            }
            myPuzzles=puzzle(aa: p)
            var i=0;
            var j=0;
            while i<myPuzzles.count {
                if myPuzzles[i]==[1,2,3,4,0,5,6,7,8] {
                    myPuzzles.removeSubrange((i+1)...)
                    Show1(bord: myPuzzles)
                    //myPuzzles.removeAll()
                    displayMyAlertMessage(userMessage: "Problem Solved with IDS")
                    possibleNewBoards.removeAll()
                    return
                }
                else {
                    j=j+1
                    //Show(bord: myPuzzles[i])
                    //for j in 0...1000000{}
                    if j<8 {
                        myPuzzles=puzzle(aa: myPuzzles[i])
                        print(myPuzzles)
                        print("**********************")
                        myPuzzles.remove(at: i)
                    }
                }
                j=0
                i=i+1
            }
        }
    ////////////////////////////////////////////////
    func solveByBFS(p: [Int])->[Int] {
        var myPuzzles = [[Int]]()
        if p==[1,2,3,4,0,5,6,7,8] {
            //Show(bord: p)
            possibleNewBoards.removeAll()
            boardsThatRemoved.removeAll()
            return [1,2,3,4,0,5,6,7,8]
        }
        myPuzzles=puzzle(aa: p)
        print(myPuzzles)
        print("#############################################")
        var i=0
        var k=0
        
        for _ in 0...9{
            while i<myPuzzles.count {
                if myPuzzles[i]==[1,2,3,4,0,5,6,7,8] {
                    //myPuzzles.removeSubrange((i+1)...)
                    //Show(bord: myPuzzles[i])
                    //myPuzzles.removeAll()
                    displayMyAlertMessage(userMessage: "Problem Solved with BFS")
                    possibleNewBoards.removeAll()
                    boardsThatRemoved.removeAll()
                    myPuzzles.removeSubrange((i+1)...)
                    showingBoards=myPuzzles
                    return [1,2,3,4,0,5,6,7,8]
                }
                i=i+1
            }
            i=0
            k=myPuzzles.count
            while i<k {
                    //Show(bord: myPuzzles[i])
                    //for j in 0...1000000{}
                myPuzzles=puzzle(aa: myPuzzles[0])
                boardsThatRemoved.append(possibleNewBoards[0])
                _=0
                romoveAllLike()
                i=i+1
            }
            print(myPuzzles)
            print("******************************")
            i=0
        }
        //Show(bord: [0,0,0,0,0,0,0,0,0])
        displayMyAlertMessage(userMessage: "Problem Can Not Be Solved By BFS.")
        return [0,0,0,0,0,0,0,0,0]
    }
////////////////////////////////////////////////
    func puzzle(aa:[Int])->[[Int]] {
        //var Boards=[[a[0],a[1],a[2]],[a[3],a[4],a[5]],[a[6],a[7],a[8]]]
        //var possibleNewBoards = [[Int]]()
        if aa[0]==0 {
            possibleNewBoards.append([aa[1],aa[0],aa[2],aa[3],aa[4],aa[5],aa[6],aa[7],aa[8]])
            possibleNewBoards.append([aa[3],aa[1],aa[2],aa[0],aa[4],aa[5],aa[6],aa[7],aa[8]])
        }
        else{
            if aa[1]==0 {
                possibleNewBoards.append([aa[1],aa[0],aa[2],aa[3],aa[4],aa[5],aa[6],aa[7],aa[8]])
                possibleNewBoards.append([aa[0],aa[2],aa[1],aa[3],aa[4],aa[5],aa[6],aa[7],aa[8]])
                possibleNewBoards.append([aa[0],aa[4],aa[2],aa[3],aa[1],aa[5],aa[6],aa[7],aa[8]])
            }
            else{
                if aa[2]==0 {
                    possibleNewBoards.append([aa[0],aa[2],aa[1],aa[3],aa[4],aa[5],aa[6],aa[7],aa[8]])
                    possibleNewBoards.append([aa[0],aa[1],aa[5],aa[3],aa[4],aa[2],aa[6],aa[7],aa[8]])
                }
                else{
                    if aa[3]==0 {
                        possibleNewBoards.append([aa[3],aa[1],aa[2],aa[0],aa[4],aa[5],aa[6],aa[7],aa[8]])
                        possibleNewBoards.append([aa[0],aa[1],aa[2],aa[4],aa[3],aa[5],aa[6],aa[7],aa[8]])
                        possibleNewBoards.append([aa[0],aa[1],aa[2],aa[6],aa[4],aa[5],aa[3],aa[7],aa[8]])
                    }
                    else{
                        if aa[4]==0 {
                            possibleNewBoards.append([aa[0],aa[4],aa[2],aa[3],aa[1],aa[5],aa[6],aa[7],aa[8]])
                            possibleNewBoards.append([aa[0],aa[1],aa[2],aa[4],aa[3],aa[5],aa[6],aa[7],aa[8]])
                            possibleNewBoards.append([aa[0],aa[1],aa[2],aa[3],aa[5],aa[4],aa[6],aa[7],aa[8]])
                            possibleNewBoards.append([aa[0],aa[1],aa[2],aa[3],aa[7],aa[5],aa[6],aa[4],aa[8]])
                        }
                        else{
                            if aa[5]==0 {
                                possibleNewBoards.append([aa[0],aa[1],aa[5],aa[3],aa[4],aa[2],aa[6],aa[7],aa[8]])
                                possibleNewBoards.append([aa[0],aa[1],aa[2],aa[3],aa[5],aa[4],aa[6],aa[7],aa[8]])
                                possibleNewBoards.append([aa[0],aa[1],aa[2],aa[3],aa[4],aa[8],aa[6],aa[7],aa[5]])
                            }
                            else{
                                if aa[6]==0 {
                                    possibleNewBoards.append([aa[0],aa[1],aa[2],aa[6],aa[4],aa[5],aa[3],aa[7],aa[8]])
                                    possibleNewBoards.append([aa[0],aa[1],aa[2],aa[3],aa[4],aa[5],aa[7],aa[6],aa[8]])
                                }
                                else{
                                    if aa[7]==0 {
                                        possibleNewBoards.append([aa[0],aa[1],aa[2],aa[3],aa[4],aa[5],aa[7],aa[6],aa[8]])
                                        possibleNewBoards.append([aa[0],aa[1],aa[2],aa[3],aa[7],aa[5],aa[6],aa[4],aa[8]])
                                        possibleNewBoards.append([aa[0],aa[1],aa[2],aa[3],aa[4],aa[5],aa[6],aa[8],aa[7]])
                                    }
                                    else{
                                        if aa[8]==0 {
                                            possibleNewBoards.append([aa[0],aa[1],aa[2],aa[3],aa[4],aa[5],aa[6],aa[8],aa[7]])
                                            possibleNewBoards.append([aa[0],aa[1],aa[2],aa[3],aa[4],aa[8],aa[6],aa[7],aa[5]])
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return possibleNewBoards
    }
    @IBAction func cancel(_ sender: Any) {
    }
    func romoveAllLike() {
        var i=0
        var j=0
        while j<boardsThatRemoved.count{
            while i<possibleNewBoards.count {
                if possibleNewBoards[i]==boardsThatRemoved[j] {
                    possibleNewBoards.remove(at: i)
                }
                i=i+1
            }
            i=0
            j=j+1
        }
    }
    func readFromFile (aa:String)->[Int]{
        return [4,1,3,6,2,0,7,8,5]
    }
}


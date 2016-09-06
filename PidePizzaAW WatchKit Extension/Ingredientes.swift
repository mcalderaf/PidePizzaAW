//
//  Ingredientes.swift
//  PidePizzaAW
//
//  Created by Marisela Caldera on 03/09/16.
//  Copyright © 2016 itchii. All rights reserved.
//

import WatchKit
import Foundation


class Ingredientes: WKInterfaceController {

    var pizzaCheeseTmp:  Pizza?
    var ingreOld:String
    var count:Int=0
    
    @IBOutlet var conJamon: WKInterfaceSwitch!
    @IBOutlet var conPepperoni: WKInterfaceSwitch!
    @IBOutlet var conPavo: WKInterfaceSwitch!
    @IBOutlet var conSalchicha: WKInterfaceSwitch!
    @IBOutlet var conAceituna: WKInterfaceSwitch!
    @IBOutlet var conCebolla: WKInterfaceSwitch!
    @IBOutlet var conPina: WKInterfaceSwitch!
    @IBOutlet var conAnchoa: WKInterfaceSwitch!
    
    override init() {
        self.ingreOld="jam"
        count=1
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c=context as! Pizza
        pizzaCheeseTmp = c
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func sigueFinal() {
        let valorContexto=Pizza(t:pizzaCheeseTmp!.tamaño,m:pizzaCheeseTmp!.masa,q:pizzaCheeseTmp!.queso,i:ingreOld)
        pushControllerWithName("FinalPizza", context: valorContexto)
        print(valorContexto)
        print("\(ingreOld) cantidad: \(count)")
    }
    @IBAction func esJamon(value: Bool) {
        if count<5 && value{
            ingreOld += " Jam"
            count=count+1
        }
        else{
            if count>=5 && value{
                conJamon.setOn(false)
            }
            else {
            conJamon.setOn(true)
            //count=count-1
            }
        }
    }
    @IBAction func esPepperoni(value: Bool) {
        if count<5 && value {
            ingreOld += " Pep"
            count=count+1
        }
        else{
            if count>=5 && value{
                conPepperoni.setOn(false)
            }
            else {
                conPepperoni.setOn(true)
                //count=count-1
            }
        }
    }
    @IBAction func esPavo(value: Bool) {
        if count<5  && value{
            ingreOld += " Pav"
            count=count+1
        }
        else{
            if count>=5 && value{
                conPavo.setOn(false)
            }
            else {
                conPavo.setOn(true)
                //count=count-1
            }
        }
    }
    @IBAction func esSalchicha(value: Bool) {
        if count<5  && value{
            ingreOld += " Sal"
            count=count+1
        }
        else{
            if count>=5 && value{
                conSalchicha.setOn(false)
            }
            else {
                conSalchicha.setOn(true)
                //count=count-1
            }
        }
    }
    @IBAction func esAceituna(value: Bool) {
        if count<5  && value{
            ingreOld += " Ace"
            count=count+1
        }
        else{
            if count>=5 && value{
                conAceituna.setOn(false)
            }
            else {
                conAceituna.setOn(true)
                //count=count-1
            }
        }
    }
    @IBAction func esCebolla(value: Bool) {
        if count<5  && value{
            ingreOld += " Ceb"
            count=count+1
        }
        else{
            if count>=5 && value{
                conCebolla.setOn(false)
            } else {
                conCebolla.setOn(true)
                //count=count-1
            }
        }
    }
    @IBAction func esPiña(value: Bool) {
        if count<5  && value{
            ingreOld += " Piñ"
            count=count+1
        }
        else{
            if count>=5 && value{
                conPina.setOn(false)
            } else {
                conPina.setOn(true)
                //count=count-1
            }
        }
    }
    @IBAction func esAnchoa(value: Bool) {
        if count<5  && value{
            ingreOld += " Anc"
            count=count+1
        }
        else{
            if count>=5 && value{
                conAnchoa.setOn(false)
            } else {
                conAnchoa.setOn(true)
                //count=count-1
            }
        }
    }
    
    
}

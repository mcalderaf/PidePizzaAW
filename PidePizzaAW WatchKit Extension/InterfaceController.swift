//
//  InterfaceController.swift
//  PidePizzaAW WatchKit Extension
//
//  Created by Marisela Caldera on 02/09/16.
//  Copyright © 2016 itchii. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    var pizzaCheeseTmp:  Pizza?
    var sizeOld:String

    @IBOutlet var tamChica: WKInterfaceSwitch!
    @IBOutlet var tamMediana: WKInterfaceSwitch!
    @IBOutlet var tamGrande: WKInterfaceSwitch!
    override init() {
        self.sizeOld="chica"
    }
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        //let c=context as! Pizza
        //pizzaCheeseTmp = c
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
      //  setSize()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func SigueMasa() {
        let valorContexto=Pizza(t:sizeOld,m:"delgada",q:"mozarela",i:"jamón")
        pushControllerWithName("IdentificadorPizza", context: valorContexto)
        print(valorContexto)
        print(sizeOld)
    }
    
   // func setSize() {
       // if sizeOld == (pizzaCheeseTmp?.tamaño)!{
         //   switch sizeOld {
           // case "chica":
             //   tamChica.setOn(true)
     //       case "mediana":
       //         tamMediana.setOn(true)
         //   case "grande":
           //     tamGrande.setOn(true)
       //     default:
         //       tamChica.setOn(false)
           // }
       // }
 //   }
    
    @IBAction func esChica(value: Bool) {
        tamMediana.setOn(false)
        tamGrande.setOn(false)
        sizeOld="chica"
    }
    
    @IBAction func esMediana(value: Bool) {
        tamChica.setOn(false)
        tamGrande.setOn(false)
        sizeOld="mediana"
    }
    
    @IBAction func esGrande(value: Bool) {
        tamChica.setOn(false)
        tamMediana.setOn(false)
        sizeOld="grande"
    }
}

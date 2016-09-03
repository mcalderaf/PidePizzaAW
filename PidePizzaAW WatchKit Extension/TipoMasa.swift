//
//  TipoMasa.swift
//  PidePizzaAW
//
//  Created by Marisela Caldera on 02/09/16.
//  Copyright © 2016 itchii. All rights reserved.
//

import WatchKit
import Foundation


class TipoMasa: WKInterfaceController {

    var pizzaCheeseTmp:  Pizza?
    var masaOld:String
    
    @IBOutlet var masaDelgada: WKInterfaceSwitch!
    @IBOutlet var masaCrujiente: WKInterfaceSwitch!
    @IBOutlet var masaGruesa: WKInterfaceSwitch!
    override init() {
        self.masaOld="delgada"
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

    @IBAction func SigueQueso() {
        let valorContexto=Pizza(t:pizzaCheeseTmp!.tamaño,m:masaOld,q:pizzaCheeseTmp!.queso,i:pizzaCheeseTmp!.ingredientes)
        pushControllerWithName("QuesoPizza", context: valorContexto)
        print(valorContexto)
        print(masaOld)
    }
    @IBAction func esDelgada(value: Bool) {
        masaGruesa.setOn(false)
        masaCrujiente.setOn(false)
        masaOld="delgada"
    }
    
    @IBAction func esCrujiente(value: Bool) {
        masaGruesa.setOn(false)
        masaDelgada.setOn(false)
        masaOld="crujiente"
    }
    
    @IBAction func esGruesa(value: Bool) {
        masaDelgada.setOn(false)
        masaCrujiente.setOn(false)
        masaOld="gruesa"
    }
}

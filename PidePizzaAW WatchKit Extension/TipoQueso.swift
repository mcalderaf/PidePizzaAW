//
//  TipoQueso.swift
//  PidePizzaAW
//
//  Created by Marisela Caldera on 03/09/16.
//  Copyright © 2016 itchii. All rights reserved.
//

import WatchKit
import Foundation


class TipoQueso: WKInterfaceController {

    var pizzaCheeseTmp:  Pizza?
    var quesoOld:String
    
    @IBOutlet var tipoMozarela: WKInterfaceSwitch!
    @IBOutlet var tipoCheddar: WKInterfaceSwitch!
    @IBOutlet var tipoParmesano: WKInterfaceSwitch!
    @IBOutlet var tipoSinQueso: WKInterfaceSwitch!
    
    override init() {
        self.quesoOld="mozarela"
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

    @IBAction func SigueIngredientes() {
        let valorContexto=Pizza(t:pizzaCheeseTmp!.tamaño,m:pizzaCheeseTmp!.masa,q:quesoOld,i:pizzaCheeseTmp!.ingredientes)
        pushControllerWithName("IngredientesPizza", context: valorContexto)
        print(valorContexto)
        print(quesoOld)
    }
    
    @IBAction func esMozarela(value: Bool) {
        tipoCheddar.setOn(false)
        tipoParmesano.setOn(false)
        tipoSinQueso.setOn(false)
        quesoOld="mozarela"
    }

    @IBAction func esCheddar(value: Bool) {
        tipoMozarela.setOn(false)
        tipoParmesano.setOn(false)
        tipoSinQueso.setOn(false)
        quesoOld="cheddar"
    }
    
    @IBAction func esParmesano(value: Bool) {
        tipoMozarela.setOn(false)
        tipoCheddar.setOn(false)
        tipoSinQueso.setOn(false)
        quesoOld="parmesano"
    }
    
    @IBAction func esSinQueso(value: Bool) {
        tipoMozarela.setOn(false)
        tipoParmesano.setOn(false)
        tipoCheddar.setOn(false)
        quesoOld="sinQueso"
    }
    
}

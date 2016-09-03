//
//  pantaFinal.swift
//  PidePizzaAW
//
//  Created by Marisela Caldera on 03/09/16.
//  Copyright © 2016 itchii. All rights reserved.
//

import WatchKit
import Foundation


class pantaFinal: WKInterfaceController {

    var pizzaCheeseTmp:  Pizza?
    @IBOutlet var orden: WKInterfaceLabel!
    @IBOutlet var datos: WKInterfaceLabel!
    @IBOutlet var ingre: WKInterfaceLabel!
    @IBOutlet var mensaje: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c=context as! Pizza
        pizzaCheeseTmp = c
        orden.setText(pizzaCheeseTmp!.tamaño+" "+pizzaCheeseTmp!.masa)
        datos.setText(pizzaCheeseTmp!.queso)
        ingre.setText(pizzaCheeseTmp!.ingredientes)
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
    @IBAction func confirmar() {
        mensaje.setText("Orden realizada!")
    }

}

//
//  Pizza.swift
//  PidePizzaAW
//
//  Created by Marisela Caldera on 02/09/16.
//  Copyright © 2016 itchii. All rights reserved.
//

import WatchKit

class Pizza: NSObject {
    var tamaño: String="chica"
    var masa: String="delgada"
    var queso: String="mozarela"
    var ingredientes:String="jamón"

    init(t:String,m:String,q:String,i:String){
        tamaño=t
        masa=m
        queso=q
        ingredientes=i
    }
}

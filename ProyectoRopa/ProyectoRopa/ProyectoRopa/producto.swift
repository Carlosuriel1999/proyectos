//
//  producto.swift
//  ProyectoRopa
//
//  Created by Laboratorio UNAM-Apple 16 on 04/10/18.
//  Copyright © 2018 Agustin. All rights reserved.
//

import Foundation

struct Producto{
    var nombre: String
    var desc: String
    var costo: Double
    var imagen: String
    
}

var myIndex = 0

let Panta = Producto(nombre: "Pantalon levis", desc: "Pantalon vaquero de color azul mezclilla talla 32", costo: 450.00, imagen: "Pantalon")

let Ten = Producto(nombre: "Tenis Adidas", desc: "Tenis adidas de color negro tallas de 6-9", costo: 1200.00, imagen: "Tenis")

let Chal = Producto(nombre: "Chaleco", desc: "Chaleco de trabajo clasico, termico de talla mediana", costo: 500.00, imagen: "Chaleco")

let Cam = Producto(nombre: "Camisa H&M", desc: "Camisa Lcc105 de color negro mediana", costo: 220.00, imagen: "Camisa")

var Ropa = [Panta, Ten, Chal, Cam]

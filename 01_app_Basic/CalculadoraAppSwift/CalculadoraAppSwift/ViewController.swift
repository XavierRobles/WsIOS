//
//  ViewController.swift
//  CalculadoraAppSwift
//
//  Created by Alumno on 18/2/21.
//  Copyright © 2021 Ios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK  Outlets
    
    //Resultado
    @IBOutlet weak var resultado: UILabel!
    
    //numeros
    
    @IBOutlet weak var num0: UIButton!
    
    @IBOutlet weak var num1: UIButton!
    
    @IBOutlet weak var num2: UIButton!
    
    @IBOutlet weak var num3: UIButton!
    
    @IBOutlet weak var num4: UIButton!
    
    @IBOutlet weak var num5: UIButton!
    
    @IBOutlet weak var num6: UIButton!
    
    @IBOutlet weak var num7: UIButton!
    
    @IBOutlet weak var num8: UIButton!
    
    @IBOutlet weak var num9: UIButton!
    
    @IBOutlet weak var coma: UIButton!
    //Variables
    private var total: Double = 0               // total
    private var temporal: Double = 0            //Temporal
    private var operacion = false       // Indica si se ha seleccionado una operador
    private var decimal = false                 // indica si es decimal el valor
    private var operador: OperatioType = .nada      //Operacion actual
    
    //Mark Constantes
    private let kDecimalSeparador = Locale.current.decimalSeparator!
    private let kMaxLength = 9
    private let kMaxValue: Double = 999999999
    private let kMinValue: Double = 0.00000001
    
    
    
    private enum OperatioType{
        case nada, suma, resta, multiplicacion, division, porcentaje
    }
    
    //Formateadores, dan forma al texto que se muestra en pantalla
    private let auxFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        let locale = Locale.current
        formatter.groupingSeparator = ""
        formatter.decimalSeparator = locale.decimalSeparator
        formatter.numberStyle = .decimal
        return formatter
    }()
    
    //Formateador de valores por pantalla por defecto
    
    private let printFormatter: NumberFormatter = {
       let formatter = NumberFormatter()
        let locale = Locale.current
        formatter.groupingSeparator = locale.groupingSeparator
        formatter.decimalSeparator = locale.decimalSeparator
        formatter.numberStyle = .decimal
        formatter.maximumIntegerDigits = 9
        formatter.maximumFractionDigits = 0
        formatter.maximumFractionDigits = 8
        return formatter
    }()
    
    
    //Operadores
    
    @IBOutlet weak var reset: UIButton!
    
    @IBOutlet weak var moreless: UIButton!
    
    @IBOutlet weak var porcentaje: UIButton!
    
    @IBOutlet weak var division: UIButton!
    
    @IBOutlet weak var multiplicador: UIButton!
    
    @IBOutlet weak var resta: UIButton!
    
    @IBOutlet weak var suma: UIButton!
    
    @IBOutlet weak var igual: UIButton!
    
    
        //Mark ciclo de vida
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        result()
        
        
        
        coma.setTitle(kDecimalSeparador, for: .normal)
        
    }

    //Mark acciones botones
    
    @IBAction func operacionReset(_ sender: Any) {
        clear()
        
    }
    
    @IBAction func operacionMoreLess(_ sender: Any) {
        temporal *= (-1)
        resultado.text = printFormatter.string(from: NSNumber(value: temporal))
    }
    
    
    @IBAction func operacionPorcentaje(_ sender: Any) {
        if operador != .porcentaje{
            result()
        }
        operacion = true
        operador = .porcentaje
        result()
        
    }
    
    @IBAction func operacionDivision(_ sender: Any) {
        
        result()
               
               operacion = true
               operador = .division
    }
    
    
    @IBAction func operacionMultiplicacion(_ sender: Any) {
        
        result()
               
               operacion = true
               operador = .multiplicacion
    }
    
    @IBAction func operacionResta(_ sender: Any) {
        result()
               
               operacion = true
               operador = .resta
        
    }
    
    
    @IBAction func operacionSuma(_ sender: Any) {
        result()
        
        operacion = true
        operador = .suma
        
    }
    
    
    @IBAction func operacionIgual(_ sender: Any) {
        result()
        
    }
    
    
    @IBAction func operacionComa(_ sender: Any) {
        let currentTemporal = auxFormatter.string(from: NSNumber(value: temporal))!
        if !operacion && currentTemporal.count > kMaxLength {
            return
        }
        resultado.text = resultado.text! + kDecimalSeparador
        decimal = true
    }
    
    
    @IBAction func AccionBotones(_ sender: UIButton) {
        reset.setTitle("C", for: .normal)
        
        var currentTemporal = auxFormatter.string(from: NSNumber(value: temporal))!
              if !operacion && currentTemporal.count > kMaxLength {
                  return
              }
              
        
        //Hemos seleccionado una operacion
        if operacion{
            total = total == 0 ? temporal : total
            resultado.text = ""
            currentTemporal = ""
            operacion = false
        }
        
        if decimal {
            currentTemporal = "\(currentTemporal)\(kDecimalSeparador)"
            decimal = false
        }
        let number = sender.tag
        temporal = Double(currentTemporal + String(number))!
        resultado.text = String(temporal)
        //resultado.text = printFormatter.string(from: NSNumber(value: temporal))
        
    }
    
    //limpia los valores
    private func clear() {
        operador = .nada
        reset.setTitle("AC", for: .normal)
        if temporal != 0 {
            temporal = 0
            resultado.text = "0"
            
        }else{
            total = 0
        }
    }
    //Obtiene el resultado final
    private func result() {
        switch operador {
        case .nada: break
           // nada
        case .suma:
            total += temporal
        case .resta:
            total -= temporal
        case .multiplicacion:
            total *= temporal
        case .division:
            total /= temporal
        case .porcentaje:
            temporal /= 100
            total = temporal
        }
        
        //Formateo en pantalla
        
       if total <= kMaxValue || total >= kMinValue {
        //resultado.text = printFormatter.string(from: NSNumber(value: total))
        }
        
        print("Total:\(total)")
    }
}


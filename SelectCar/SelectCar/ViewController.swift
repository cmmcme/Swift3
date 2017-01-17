//
//  ViewController.swift
//  SelectCar
//
//  Created by 윤찬미 on 2017. 1. 11..
//  Copyright © 2017년 윤찬미. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet var imageView: UIImageView!
    
    let carCompanyName = ["Tesla", "Lamborghini", "Porsche"]
    
    var carModel:[String] = []
    var CarModelImage:[String] = []
    
    let tesla = ["Model S", "Model X"]
    let lamborghini = ["aventador", "veneno", "huracan"]
    let porsche = ["911", "boxter"]
    
    let teslaImageNames = ["tesla-model-s.jpg","tesla-model-x.jpg"]
    let lamborghiniImageNames = ["lamborghini-aventador.jpg","lamborghini-veneno.jpg","lamborghini-huracan.jpg"]
    let porscheImageNames = ["porsche-911.jpg","porsche-boxter.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        carModel = tesla
        CarModelImage = teslaImageNames
        
        imageView.layer.cornerRadius = 50.0
        imageView.layer.masksToBounds = true
    }
    
    //UIPickerViewDataSource
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return carCompanyName.count
        }
        else {
            return carModel.count
        }
    }
    
    //UIPickerViewDelegate
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return carCompanyName[row]
        }
        else {
            return carModel[row]
        }
    }
    
    
    // picker 값이 바뀔 때마다 호출됨
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 && row == 0 {
            carModel = tesla
            CarModelImage = teslaImageNames
        }
        else if component == 0 && row == 1 {
            carModel = lamborghini
            CarModelImage = lamborghiniImageNames
        }
        else if component == 0 && row == 2{
            carModel = porsche
            CarModelImage = porscheImageNames
        }
        pickerView.reloadAllComponents()
        
        
        imageView.image = UIImage(named: CarModelImage[pickerView.selectedRow(inComponent: 1)])
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  WeatherTable
//
//  Created by 윤찬미 on 2017. 1. 13..
//  Copyright © 2017년 윤찬미. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,XMLParserDelegate {
    var datalist:[[String:String]] = []
    var detaildata:[String:String] = [:]
    var elementTemp:String = ""
    var blank:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let baseURL = "https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/weather.xml"
        let parser = XMLParser(contentsOf: URL(string: baseURL)!)
        
        parser!.delegate = self
        parser!.parse()
        
    }
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        //print("didStartElement : \(elementName)")
        elementTemp = elementName
        blank = true
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        if blank == true && elementTemp != "local" && elementTemp != "weatherinfo" {
            //print("foundCharacters : \(string)")
            detaildata[elementTemp] = string
        }

    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "local" {
            datalist += [detaildata]
            print(detaildata)
        }
        blank = false
        //print("didEndElement : \(elementName)")
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datalist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! WeatherCell
        
        //print("indexPath row : \(indexPath.row)")
        var dicTemp = datalist[indexPath.row]
        
        print(dicTemp)
        
        cell.countryLabel.text = dicTemp["country"]
        
        let weatherStr = dicTemp["weather"]
        
        cell.weatherLabel.text = weatherStr
        cell.temperatureLabel.text = dicTemp["temperature"]
        
        if weatherStr == "맑음" {
            cell.imgView.image = UIImage(named: "sunny.png")
        }
        else if weatherStr == "비" {
            cell.imgView.image = UIImage(named: "rainy.png")
        }
        else if weatherStr == "흐림" {
            cell.imgView.image = UIImage(named: "cloudy.png")
        }
        else if weatherStr == "눈" {
            cell.imgView.image = UIImage(named: "snow.png")
        }
        else{
            cell.imgView.image = UIImage(named: "blizzard.png")
        }
        
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


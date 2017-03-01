//
//  GpsController.swift
//  IOT
//
//  Created by rupendra on 2/28/17.
//  Copyright © 2017 Synechron. All rights reserved.
//

import UIKit

class GpsController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var basicInfoContainerView: UIView!
    var arrayOfBasicInfo = Array<BasicInfoModel>()
    var arrayOfContactDetails = Array<BasicInfoModel>()
    var arrayOfPolicyDetails = Array<BasicInfoModel>()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.arrayOfBasicInfo = BasicInfoModel.arrayOfBasicInfo()
        self.arrayOfContactDetails = BasicInfoModel.arrayOfContactDetails()
        self.arrayOfPolicyDetails = BasicInfoModel.arrayOfPolicyDetails()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    //MARK: - TableView Delegate and DataSource Methods
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return self.arrayOfBasicInfo.count
        case 1:
            return self.arrayOfContactDetails.count
        case 2:
            return self.arrayOfPolicyDetails.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 30.0;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let aReturnVal = tableView.dequeueReusableCell(withIdentifier: "basicInfoCell") as! BasicInfoTableCellView
        
        
        
        switch indexPath.section {
        
        case 0:
            let infoModel = self.arrayOfBasicInfo[indexPath.row]
            aReturnVal.titleDisplayLabel.text = infoModel.title
            aReturnVal.valueLabel.text = infoModel.value
        case 1:
            let infoModel = self.arrayOfContactDetails[indexPath.row]
            aReturnVal.titleDisplayLabel.text = infoModel.title
            aReturnVal.valueLabel.text = infoModel.value
        case 2:
            let infoModel = self.arrayOfPolicyDetails[indexPath.row]
            aReturnVal.titleDisplayLabel.text = infoModel.title
            aReturnVal.valueLabel.text = infoModel.value
        default:
            aReturnVal.titleDisplayLabel.text = ""
            aReturnVal.valueLabel.text = ""
        }
        
        return aReturnVal
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        switch section {
        case 0:
            return "Basic information"
        case 1:
            return "Contact details"
        case 2:
            return "Policy details"
        default:
            return ""
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50.0
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int){
        view.tintColor = self.basicInfoContainerView.backgroundColor
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = UIColor.white
        header.textLabel?.font = UIFont.systemFont(ofSize: 14.0)
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let aReturnVal = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 1))
        aReturnVal.backgroundColor = UIColor.clear
        
        let lineView = UIView(frame: CGRect(x: 14, y: 0, width: aReturnVal.frame.size.width-28, height: aReturnVal.frame.size.height))
        lineView.backgroundColor = UIColor(red: 159.0/255.0, green: 160.0/255.0, blue: 162.0/255.0, alpha: 1.0)
        if section == 2 {
            lineView.backgroundColor = UIColor.clear
        }
        aReturnVal.addSubview(lineView)
        return aReturnVal
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1.0
    }

}

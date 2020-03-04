//
//  WrirteController.swift
//  TabMenuApp
//
//  Created by 503 on 2020/03/04.
//  Copyright © 2020 ssang. All rights reserved.
//

import UIKit

class WrirteController: UIViewController {

    @IBOutlet weak var t_input: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func btnClick(_ sender: Any) {
       //이전화면이 보유한 data배열에 입력한
        regist()
    }
    
    func regist(){
        //지금 현재 뷰컨트롤러 클래스를 포함하는
        //전체 네이게이션 컨트롤러를 아용하여 나 아닌 뷰 컨트롤러에 접근
       let previous =
        self.navigationController?.viewControllers[0] as! BoardListController
        print(previous.data)
        //이배열에 동적으로 추가
        let str = t_input.text! //입력한 값
        previous.data.append(str) // 배열에 추가
        //화면 갱신 !! tableView 컨포넌트 갱신
        previous.tableView.reloadData()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

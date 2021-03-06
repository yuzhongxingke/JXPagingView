//
//  ViewController.swift
//  JXPagingView
//
//  Created by jiaxin on 2018/8/10.
//  Copyright © 2018年 jiaxin. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        var title: String?
        for view in cell!.contentView.subviews {
            if view.isKind(of: UILabel.classForCoder()) {
                let label = view as! UILabel
                title = label.text
                break
            }
        }
        switch indexPath.row {
        case 0:
            let vc = ZoomViewController()
            vc.title = title
            self.navigationController?.pushViewController(vc, animated: true)
        case 1:
            let vc = RefreshViewController()
            vc.title = title
            self.navigationController?.pushViewController(vc, animated: true)
        case 2:
            let vc = ListRefreshViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 3:
            let vc = NaviHiddenViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 4:
            let vc = CollectionViewViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 5:
            let vc = VCViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        default:
            break
        }
    }

}


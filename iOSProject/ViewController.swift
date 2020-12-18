//
//  ViewController.swift
//  iOSProject
//
//  Created by apple on 2020/12/3.
//

import UIKit
import SnapKit

class ListNode {
    var val: Int
    var next: ListNode?
    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}
class ViewController: UIViewController {

    lazy var btn0: UIButton = {
        let aBtn = UIButton()
        aBtn.addTarget(self, action: #selector(btn0Action(sender:)), for:.touchUpInside)
        aBtn.backgroundColor = UIColor.init(red: 1, green: 0, blue: 0, alpha: 0.5)
        return aBtn
    }()
    
    lazy var btn1: UIButton = {
        let aBtn = UIButton()
        aBtn.addTarget(self, action: #selector(btn1Action(sender:)), for:.touchUpInside)
        aBtn.backgroundColor = UIColor.init(red: 0, green: 0, blue: 1, alpha: 0.5)
        return aBtn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.addSubview(btn0)
        btn0.frame = CGRect.init(x: 50, y: 100, width: 100, height: 100)
        btn0.enlargeRect = UIEdgeInsets.init(top: 10, left: 50, bottom: 10, right: 50)
        
        self.view.addSubview(btn1)
        btn1.frame = CGRect.init(x: 300, y: 100, width: 100, height: 100)
        btn1.enlargeRect = UIEdgeInsets.init(top: 10, left: 50, bottom: 10, right: 50)
        
        let view = UIView.init()
        view.backgroundColor = UIColor.randrom()
        self.view.addSubview(view)
        view.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview()
            $0.width.equalTo(100)
            $0.height.equalTo(100)
        }
        
        
        let a: ListNode = ListNode.init(1)
        let b: ListNode = ListNode.init(2)
        let c: ListNode = ListNode.init(3)
        let d: ListNode = ListNode.init(4)
        let e: ListNode = ListNode.init(5)
        let f: ListNode = ListNode.init(6)
        let g: ListNode = ListNode.init(7)
        
        a.next = b
        b.next = c
        c.next = d
        d.next = e
        e.next = f
        f.next = g
        
        printList(a)
        
        let newList = self.reverseList0(a)
        
        printList(newList)
    }
    
    func reverseList0(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        
        var p = head
        var newHead: ListNode? = nil
        while p != nil {
            let temp = p?.next
            p?.next = newHead
            newHead = p
            p = temp
        }
        
        return newHead
    }
    
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        
        let newHead = reverseList(head?.next)
        head?.next?.next = head
        head?.next = nil
        
        return newHead
    }

    func printList(_ head: ListNode?) {

        var newHead = head
        var valueText:String = ""
        
        while newHead != nil {
            valueText = "\(valueText) -> \(String(describing: newHead?.val ?? 0))"
            
            newHead = newHead?.next
        }
        
        print("\(valueText)")
        
    }
    
    @objc func btn0Action(sender: UIButton) {
        
        print("tap0........")
    }

    @objc func btn1Action(sender: UIButton) {
        
        print("tap1........")
    }
}


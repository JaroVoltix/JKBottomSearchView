//
//  JKBottomSearchView.swift
//  JKBottomSearchView
//
//  Created by Jarosław Krajewski on 06/04/2018.
//  Copyright © 2018 com.jerronimo. All rights reserved.
//

import UIKit


public class JKBottomSearchView: UIView{

    private let paddingFromTop:CGFloat = 8
    private let minimalYPosition:CGFloat
    private let maximalYPosition:CGFloat

    public init(){
        let windowFrame = UIWindow().frame
        let visibleHeight:CGFloat = 56 + paddingFromTop
        let frame = CGRect(
            x: 0, y: windowFrame.height - visibleHeight,
            width: windowFrame.width, height: windowFrame.height * CGFloat(0.8))
        self.minimalYPosition = windowFrame.height - frame.height
        self.maximalYPosition = frame.origin.y
        super.init(frame: frame)
        setupView()
    }

    public required init?(coder aDecoder: NSCoder) {
        minimalYPosition = 0
        maximalYPosition = UIWindow().frame.height - 56 - 8
        super.init(coder: aDecoder)
        setupView()
    }

    private func setupView(){

        let blurView = UIVisualEffectView(effect: UIBlurEffect(style: .dark))
        blurView.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: self.frame.size)
        blurView.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        addSubview(blurView)

        let searchBar = UISearchBar(frame: CGRect(x: 0, y: paddingFromTop, width: frame.width, height: 56))
        blurView.contentView.addSubview(searchBar)
        searchBar.delegate = self
        searchBar.enablesReturnKeyAutomatically = false

        let tableViewOriginY = searchBar.frame.origin.y + searchBar.frame.height
        let tableView = UITableView(frame: CGRect(
            x:0, y: tableViewOriginY,
            width: frame.width, height:frame.height - tableViewOriginY ))
        tableView.backgroundColor = .clear
        blurView.contentView.addSubview(tableView)
    }

    private func expand(fully:Bool){
        UIView.animate(withDuration: 1.0) {
            if fully{
                self.frame.origin.y = self.minimalYPosition
            }else{
                self.frame.origin.y = (self.minimalYPosition + self.maximalYPosition)/2
            }
        }
    }

    private func collapse(fully:Bool){
        UIView.animate(withDuration: 1.0) {
            if fully{
                self.frame.origin.y = self.maximalYPosition
            }else{
                self.frame.origin.y = (self.minimalYPosition + self.maximalYPosition)/2
            }
        }
    }
}

extension JKBottomSearchView : UISearchBarDelegate {
    public func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        expand(fully: true)
    }

    public func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        collapse(fully: true)
    }

    public func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
}

# JKBottomSearchView
[![Build Status](https://travis-ci.org/JaroVoltix/JKBottomSearchView.svg?branch=master)](https://travis-ci.org/JaroVoltix/JKBottomSearchView)
<p align="middle">
<img src="https://github.com/JaroVoltix/JKBottomSearchView/blob/master/assets/example.gif" width="150" height="266" title="example in gif">
<img src="https://github.com/JaroVoltix/JKBottomSearchView/blob/master/assets/FullyCollapsed.png" width="150" height="266" title="FullyCollapsed">
<img src="https://github.com/JaroVoltix/JKBottomSearchView/blob/master/assets/FullyExpanded.png" width="150" height="266" title="FullyExpanded">
<img src="https://github.com/JaroVoltix/JKBottomSearchView/blob/master/assets/FullyExpandedAndFilled.png" width="150" height="266" title="FullyExpandedAndFilled">
<img src="https://github.com/JaroVoltix/JKBottomSearchView/blob/master/assets/MiddleExpanded.png" width="150" height="266" title="MiddleExpanded">
</p>

## Installation

### Cocapods
`pod "JKBottomSearchView"`

### Carthage 
``` github "JeyKeyCom/JKBottomSearchView"```

## Requirment
 - iOS 9+
 - Xcode 9+
 - Swift 4.1+
 
## Example
You can check out example project that use JKBottomSearchView here:
https://github.com/JaroVoltix/JKBottomSearchViewExample
 
## Usage
Create JKBottomSearchView 
```
func viewDidLoad(){
    super.viewDidLoad()
    let searchView = JKBottomSearchView()
    view.addSubview(searchView)
}
```
### DataSource & Delegate
JKBottomSearchViewDataSource is and alias to UITableViewDataSource. 

```
extension ViewController:JKBottomSearchViewDataSource{}
```
```
searchView.dataSource = self
```

JKBottomSearchViewDelegate is an alias for UITableViewDelegate & UISearchBarDelegate.

```
extension ViewController:JKBottomSearchViewDelegate{}
```
```
searchView.delegate = self
```

### Customization
```
//Change blur effect. Default nil
searchView.blurEffect = UIBlurEffect(style: .dark)

//Any non tableView and searchBar customization should be performed on contentView
searchView.contentView.backgroundColor = .red

//Customizing searchBar
searchView.barStyle = .black 
searchView.searchBarStyle = .minimal 
searchView.searchBarTintColor = .black
searchView.placeholder = "What are you looking for"
searchView.showsCancelButton = true
searchView.enablesReturnKeyAutomatically = true

//Customizing searchBar textField
let textField = searchView.searchBarTextField
textField.textColor = .red

//Customizing tableView
//You can access tableView and customize as You like by tableView property
searchView.tableView.isScrollEnabled = false

//Customizing expansion 
searchView.minimalYPosition = 100 // distance from top after fully expanding 
searchView.fastExpandindTime = 0.1
searchView.slowExpandingTime = 2
searchView.toggleExpand(.fullyExpanded,fast:false) // fast parameter is optional, default false
```

## License
Icons used in example available at: https://icons8.com

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

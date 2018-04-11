Pod::Spec.new do |s|
s.name             = 'JKBottomSearchView'
s.version          = '1.1.0'
s.summary          = 'Search View similar to Apple maps solution'

s.description      = <<-DESC
Simple view that contains searchBar and tableView and allows for full customization with native dataSource and delegate classes. SearchView can be dragged and after drop will snap to closest of 3 levels (fully collapsed, middle, fully expanded).
DESC

s.homepage         = 'https://github.com/JaroVoltix/JKBottomSearchView'
s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
s.author           = { 'Jarosław Krajewski' => 'jaroslaw.krajewski94@gmail.com' }
s.source           = { :git => 'https://github.com/JaroVoltix/JKBottomSearchView.git', :tag => s.version.to_s }

s.ios.deployment_target = '9.0'
s.source_files = 'Sources/*'

end

Pod::Spec.new do |s|
  s.name         = "TDMScreenEdgePanGestureRecognizer"
  s.version      = "0.0.1"
  s.summary      = "Small extension to UIScreenEdgePanGestureRecognizer to make it play nice with UIScrollViews."
  s.description  = <<-DESC
                   If you have a UIScrollView and a UIScreenEdgePanGestureRecognizer, it is likely that the edgepan and the scrollview-pan conflicts. This happens when the 1) scrollview extend all (<15px approx.) the way to the edges and 2) the scrollview can bounce in the direction orthogonal to edgepans detection-edge.
                   DESC
  s.homepage     = "https://github.com/duemunk/TDMScreenEdgePanGestureRecognizer"
  s.license      = 'GPLv3'
  s.author       = { "Tobias Due Munk" => "tobias@developmunk.dk" }
  s.source       = { :git => "https://github.com/duemunk/TDMScreenEdgePanGestureRecognizer.git", :tag => s.version.to_s }

  s.platform     = :ios, "7.0"
  s.ios.deployment_target = '7.0'
  s.requires_arc = true
 
  s.resources = 'Assets'

	s.public_header_files = 'Classes/*.h'
  s.source_files = 'Classes/*.{h,m}'
end

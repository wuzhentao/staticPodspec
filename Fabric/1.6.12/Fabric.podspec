 Pod::Spec.new do |s|
	   	s.name             = 'Fabric'
		   s.version          = '1.6.12'
		   s.summary          = 'A short description of libFabric.'
         s.description      = <<-DESC
         TODO: Add long description of the pod here.
         DESC
         s.homepage         = 'https://lianjia.com'
         s.license          = { :type => 'MIT', :file => 'Fabric/LICENSE' }
         s.author           = { 'lianjia' => 'lianjia.com' }
         s.source           = { :git => 'https://github.com/wuzhentao/staticPod.git', :commit => "af549e9b6a0ec2abdbfb0fe7b69feccc298db9f7" }
         s.preserve_paths = 'Fabric/*'
         s.ios.deployment_target = '8.0'
         s.default_subspec  = "static"
                                               
         s.subspec 'static' do |static|
         	static.public_header_files = 'Fabric/Headers/*'
         	static.source_files = 'Fabric/Headers/*'
         end
                                               
         s.vendored_frameworks =  "Fabric/iOS/Fabric.framework"
         s.frameworks =  "UIKit"
end

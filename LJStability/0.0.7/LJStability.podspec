 Pod::Spec.new do |s|
	   	s.name             = 'LJStability'
		   s.version          = '0.0.7'
		   s.summary          = 'A short description of libLJStability.'
         s.description      = <<-DESC
         TODO: Add long description of the pod here.
         DESC
         s.homepage         = 'https://lianjia.com'
         s.license          = { :type => 'MIT', :file => 'LJStability/LICENSE' }
         s.author           = { 'lianjia' => 'lianjia.com' }
         s.source           = { :git => 'https://github.com/wuzhentao/staticPod.git', :commit => "af549e9b6a0ec2abdbfb0fe7b69feccc298db9f7" }
         s.preserve_paths = 'LJStability/*'
         s.ios.deployment_target = '8.0'
         s.default_subspec  = "static"
                                               
         s.subspec 'static' do |static|
         	static.public_header_files = 'LJStability/Headers/*'
         	static.source_files = 'LJStability/Headers/*'
      		static.vendored_libraries =  "LJStability/libLJStability.a"
         end
                                               
         s.subspec 'source' do |source|
            source.source_files =  "LJStability/LJStability/Classes/Stability/DanglingPointerStability/*", "LJStability/LJStability/Classes/Stability/FoundationContainer/*", "LJStability/LJStability/Classes/Stability/KVO/*", "LJStability/LJStability/Classes/Stability/NSNull/*", "LJStability/LJStability/Classes/Stability/NSTimer/*", "LJStability/LJStability/Classes/Stability/Notification/*", "LJStability/LJStability/Classes/Stability/Record/*", "LJStability/LJStability/Classes/*", "LJStability/LJStability/Classes/Stability/SmartKit/*"
            source.requires_arc = "LJStability/LJStability/Classes/Stability/DanglingPointerStability/LJDanglingPonterClassService.m", "LJStability/LJStability/Classes/Stability/DanglingPointerStability/ForwordingCenterForDanglingPoint.m"
         end
                                               
end

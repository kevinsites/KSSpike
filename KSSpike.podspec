Pod::Spec.new do |s|

    s.platform = :ios
    s.ios.deployment_target = '11.0'
    s.swift_version = '5.0'
    
    s.name = "KSSpike"
    s.module_name = "KSSpike"
    s.summary = "KSSpike SDK for the iOS platform"
    s.requires_arc = true
    s.version = "0.0.2"
    s.author = { "KSSpike" => "KSSpike" }
    s.homepage = "https://github.com/kevinsites/KSSpike.git"
    
    s.source = { :git => "https://github.com/kevinsites/KSSpike.git", :tag => "v#{s.version}"}
    s.source_files = "KSSpike/**/*.{h,swift}"
    s.exclude_files = 'KSSpike/Advanced/Advanced.swift'

    s.default_subspecs = 'Core'

    s.subspec 'Core' do |core|
        core.source_files = "KSSpike/**/*.{h,swift}"
        core.exclude_files = 'KSSpike/Advanced/Advanced.swift'
    end

    s.subspec 'Advanced' do |advanced|
        advanced.source_files = "KSSpike/**/*.{h,swift}"
        advanced.dependency 'Alamofire'
    end
    
    s.license = { :type => "MIT", :text => <<-LICENSE
     
    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:
    
    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.
    
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.
    
    LICENSE
     }
end
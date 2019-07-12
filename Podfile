source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '12.2'
use_frameworks!

inhibit_all_warnings!

def install_pods
    pod 'SDWebImage'
end

def install_tests_related_pods
    pod 'OHHTTPStubs'
end

target 'PaytouchHomeExercise' do
    install_pods
    install_tests_related_pods
end

target 'PaytouchHomeExerciseTests' do
    install_tests_related_pods
end

target 'PaytouchHomeExerciseUITests' do
    install_tests_related_pods
end

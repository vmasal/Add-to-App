    flutter_application_path = '../add_to_app_flutter_module'
load File.join(flutter_application_path, '.ios', 'Flutter', 'podhelper.rb')

target 'Add-to-App' do
    use_frameworks!
    install_all_flutter_pods(flutter_application_path)
end

post_install do |installer|
flutter_post_install(installer) if defined?(flutter_post_install)
end

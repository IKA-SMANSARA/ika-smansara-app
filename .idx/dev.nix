# To learn more about how to use Nix to configure your environment
# see: https://developers.google.com/idx/guides/customize-idx-env
{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "stable-23.11"; # or "unstable"
  # Use https://search.nixos.org/packages to find packages
  packages = [
    pkgs.nodePackages.firebase-tools
    pkgs.jdk17
    pkgs.unzip
    pkgs.curl
  ];
  # Sets environment variables in the workspace
  env = {};
  idx = {
    # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
    extensions = [
      "MrChetan.flutter"
      "robert-brunhage.flutter-riverpod-snippets"
    ];
    workspace = {
      # Runs when a workspace is first created with this `dev.nix` file
      onStart = {
        clean-up-project = ''
            rm -rf build
            flutter pub get
            flutter clean 
            dart run build_runner build --delete-conflicting-outputs
        '';
      };

      onCreate = {
        install-fvm = ''
            dart pub global activate fvm

            $HOME/.pub-cache/bin/fvm install 3.19.6 --setup

            $HOME/.pub-cache/bin/fvm use 3.19.6

            $HOME/.pub-cache/bin/fvm global 3.19.6
        '';
        
        # build-flutter = ''
        #   cd /home/user/ika-smansara-app/android

        #   ./gradlew \
        #     --parallel \
        #     -Pverbose=true \
        #     -Ptarget-platform=android-x86 \
        #     -Ptarget=/home/user/ika-smansara-app/lib/main_development.dart \
        #     -Pbase-application-name=android.app.Application \
        #     -Pdart-defines=RkxVVFRFUl9XRUJfQ0FOVkFTS0lUX1VSTD1odHRwczovL3d3dy5nc3RhdGljLmNvbS9mbHV0dGVyLWNhbnZhc2tpdC85NzU1MDkwN2I3MGY0ZjNiMzI4YjZjMTYwMGRmMjFmYWMxYTE4ODlhLw== \
        #     -Pdart-obfuscation=false \
        #     -Ptrack-widget-creation=true \
        #     -Ptree-shake-icons=false \
        #     -Pfilesystem-scheme=org-dartlang-root \
        #     assembleDebug

        #   # TODO: Execute web build in debug mode.
        #   # flutter run does this transparently either way
        #   # https://github.com/flutter/flutter/issues/96283#issuecomment-1144750411
        #   # flutter build web --profile --dart-define=Dart2jsOptimization=O0 

        #   adb -s localhost:5555 wait-for-device
        # '';
      };
      
      # To run something each time the workspace is (re)started, use the `onStart` hook
    };
    # Enable previews and customize configuration
    previews = {
      enable = true;
      previews = {
        # web = {
        #   command = ["flutter" "run" "--machine" "-d" "web-server" "--web-hostname" "0.0.0.0" "--web-port" "$PORT"];
        #   manager = "flutter";
        # };
        android = {
          # command = ["flutter" "run" "--flavor" "development" "--target" "lib/main_development.dart" "--machine" "-d" "android" "-d" "localhost:5555"];
          manager = "flutter";
        };
      };
    };
  };
}

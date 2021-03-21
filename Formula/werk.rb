class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/releases/download/0.4.4/werk-macOS"
    version "0.4.4"
    sha256 "75e717377d12f183865929b337b41dfe7f521d258b61b2af304cfd6220ebbaea"
    license "MIT"
    
    depends_on "libyaml"
    depends_on "libevent"
    depends_on "pcre"

    def install
        bin.install "werk-darwin-x64" => "werk"
    end

    test do
        system "#{bin}/werk", "--version"
    end
end

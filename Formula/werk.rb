class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/releases/download/0.2.1/werk-macos-10.15"
    version "0.2.1"
    sha256 "17db281343d9fa476cef66002e67afdb126ad0fc9ed0238136143082e58b669a"
    license "MIT"
    
    depends_on "libyaml"
    depends_on "libevent"
    depends_on "pcre"

    def install
        bin.install "werk-macos-10.15" => "werk"
    end

    test do
    end
end

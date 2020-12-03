class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/releases/download/0.1.9/werk-macos-10.15"
    version "0.1.9"
    sha256 "707fb54b25220458354912091349d71123a13d1d382b67b25ecf93dd76d85efd"
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

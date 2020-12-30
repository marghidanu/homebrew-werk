class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/releases/download/0.2.0/werk-macos-10.15"
    version "0.2.0"
    sha256 "b0157a9044000ad28e6b63bc19e3e3152695d68b1f2061aada24755e6b30c85e"
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

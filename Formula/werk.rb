class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/releases/download/0.4.1/werk-macOS"
    version "0.4.1"
    sha256 "a9963ce25514acaa2cf3e1f356536d0f56119a84d7a0e60f0ef1ab05c84cc5ad"
    license "MIT"
    
    depends_on "libyaml"
    depends_on "libevent"
    depends_on "pcre"

    def install
        bin.install "werk-macOS" => "werk"
    end

    test do
    end
end

class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/releases/download/0.4.0/werk-macOS"
    version "0.4.0"
    sha256 "124297616a08af98c7aa35fac8b626b62c24db7c2e1c19272f53a88ef595c4c2"
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

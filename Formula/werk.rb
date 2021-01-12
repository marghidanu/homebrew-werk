class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/releases/download/0.3.0/werk-macos-10.15"
    version "0.3.0"
    sha256 "9872c60a5c7f75b3f23f2a62fef1ddb75d44f0dad91cf05bea07309d4784195a"
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

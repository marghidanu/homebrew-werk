class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/releases/download/0.1.8/werk-macos-10.15"
    version "0.1.8"
    sha256 "c0e8ec597d6e4fd1dec961a44a96dd639160537d8408be38291c04eced2fd817"
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

class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/releases/download/0.6.0/werk-darwin-x64"
    version "0.6.0"
    sha256 "1893c346f21b73950e8716584fce8edd5064849b6023e00c50c5a4a057aa1131"
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

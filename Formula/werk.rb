class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/releases/download/0.5.2/werk-darwin-x64"
    version "0.5.2"
    sha256 "8538ac8637d00596065f75bd6907d606ad03cc4199dd7be9e2945b6a5cca1727"
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

class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/releases/download/0.6.2/werk-darwin-x64"
    version "0.6.2"
    sha256 "4d5d1ad208fb05b274271d46f0cb0018cd6b259f0ae8010bf5352d7f2e81d7dd"
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

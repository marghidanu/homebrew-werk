class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/releases/download/0.5.0/werk-darwin-x64"
    version "0.5.0"
    sha256 "4c4ea44ff1b90e588220337407ddf9f3352a609c7cff986d3ec8788d69f10ddd"
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

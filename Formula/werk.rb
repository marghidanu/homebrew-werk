class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/releases/download/0.5.4/werk-darwin-x64"
    version "0.5.4"
    sha256 "42a6eb30d2184af6ea9dae8f17547c08545d740fc399e5fda33e269fbb7dde29"
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

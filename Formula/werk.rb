class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/releases/download/0.5.3/werk-darwin-x64"
    version "0.5.3"
    sha256 "bb7dd2324383fabe3afd73a96c0edb81a2ac00a79742102642dcee7e1b6b6008"
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

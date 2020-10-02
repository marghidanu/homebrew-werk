class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/releases/download/0.1.2/werk-macos"
    version "0.1.2"
    sha256 "64ae99872eb30ec69920030dcbc116f838110373873b07e2e08a7905a010cf16"
    license "MIT"
    
    depends_on "libyaml"
    depends_on "libevent"
    depends_on "pcre"

    def install
        bin.install "werk-macos" => "werk"
    end

    test do
    end
end

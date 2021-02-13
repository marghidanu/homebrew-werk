class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/releases/download/0.4.2/werk-macOS"
    version "0.4.2"
    sha256 "b3816ec77ee80d933657f4d411d6705329f596d57540786daa44535f72d91553"
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

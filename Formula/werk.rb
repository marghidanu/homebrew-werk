class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/releases/download/0.1.10/werk-macos-10.15"
    version "0.1.10"
    sha256 "a0dbbfce81fec6e1d49366159ade6c79e238c06655a21193fa5a83a14471e766"
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

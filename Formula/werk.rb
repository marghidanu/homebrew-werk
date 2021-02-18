class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/releases/download/0.4.3/werk-macOS"
    version "0.4.3"
    sha256 "f34671b89a5b8a24ff7aef0c096393f107f370e489b90de040ce86f2b5d00dd5"
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

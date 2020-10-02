class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/releases/download/0.1.1/werk-macos"
    version "0.1.1"
    sha256 "f245c4e1b37b4f0c02a98046964376089f225dedcf27a279894c359142774d60"
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

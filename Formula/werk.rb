class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/releases/download/0.1.7/werk-macos-10.15"
    version "0.1.7"
    sha256 "cebb3ad455f90e84d578fa1d9631d1c919b0d5f86e03d357aec520ed192d7500"
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

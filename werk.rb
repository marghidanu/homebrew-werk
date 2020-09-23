class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/releases/download/0.1.0-rc1/werk-macos"
    version "0.1.0"
    sha256 "6925fdb1bec767f3f4e80e91a5efb58c1eaf70a766787738aa4d3970aee5becb"
    license "MIT"

    def install
        bin.install "werk-macos" => "werk"
    end

    test do
    end
end
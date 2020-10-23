class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/releases/download/0.1.4/werk-macos"
    version "0.1.4"
    sha256 "08edfd32d062fc3b0f69d2c49b4dda4c3b0819b4b3233375203da6b220aecd3f"
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

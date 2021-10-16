class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/archive/0.6.3.tar.gz"
    version "0.6.3"
    sha256 "e9ab02ac3cd699bbc79cdbff28593d120b0691dd97f91ead486e2b16e824e348"
    license "MIT"
    
    depends_on "crystal" => :build

    def install
        system "shards", "build", "--release", "--no-debug"
        bin.install "bin/werk" => "werk"
    end

    test do
        system "#{bin}/werk", "--version"
    end
end

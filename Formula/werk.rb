class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/archive/0.7.0.tar.gz"
    version "0.7.0"
    sha256 "01779e7744a59a461a434595f6c2edcf356866d1730163d24cedde650f5861c4"
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

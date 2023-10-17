class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/archive/0.7.5.tar.gz"
    version "0.7.5"
    sha256 "ca33f7b0b51a6d72695d5556c8e531e3074038e9fd7657f9d080d2b28b48725a"
    license "MIT"

    depends_on "crystal" => :build

    def install        
        ["src/werk.cr", "shard.yml"].each do |file|
            data = File.read(file).gsub("0.0.0", version)
            File.open(file, "w") { |f| f.write(data) }
        end

        system "pkg-config", "--libs", "libcrypto"
        # system "shards", "build", "--release", "--no-debug"
        bin.install "bin/werk" => "werk"
    end

    test do
        system "#{bin}/werk", "--version"
    end
end

class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/archive/0.7.8.tar.gz"
    version "0.7.8"
    sha256 "ab6af402ad8f7c5552ac2c35e1a1d4959137f0bf3e9baf62825cc10c8251dbe0"
    license "MIT"

    depends_on "crystal" => :build
    depends_on "openssl@3"

    def install        
        ["src/werk.cr", "shard.yml"].each do |file|
            data = File.read(file).gsub("0.0.0", version)
            File.open(file, "w") { |f| f.write(data) }
        end

        system "shards", "build", "--release", "--no-debug"
        bin.install "bin/werk" => "werk"
    end

    test do
        system "#{bin}/werk", "--version"
    end
end

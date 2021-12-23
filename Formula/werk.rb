class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/archive/0.7.1.tar.gz"
    version "0.7.1"
    sha256 "4fa5b63b63721eb848b960bf56283024df6dfc8a2ce7e67b45d2e0b9698ccca1"
    license "MIT"

    depends_on "crystal" => :build

    def install
        ["src/version.cr", "shard.yml"].each do |file|
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

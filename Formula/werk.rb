class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/archive/0.7.3.tar.gz"
    version "0.7.3"
    sha256 "97a80b97b845f64f308cc82f77121b11dbceaa9ebf782c73c2be61ebaa2e49c4"
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

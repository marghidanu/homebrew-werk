class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/archive/0.7.4.tar.gz"
    version "0.7.4"
    sha256 "fcf1e3645442f7eed37a71267b4cd9830f031b5fe9307ed2f22264b582ee0b06"
    license "MIT"

    depends_on "crystal" => :build

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

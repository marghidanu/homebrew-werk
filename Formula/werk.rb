class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/archive/0.7.2.tar.gz"
    version "0.7.2"
    sha256 "740a4dd78ba7430115e7c67ea52a1e58bb790bc4ac1c3df4d96e90202bba2efb"
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

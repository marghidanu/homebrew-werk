class Werk < Formula
    desc "Local CI pipeline runner with parallel execution and Docker support"
    homepage "https://github.com/marghidanu/werk"
    url "https://github.com/marghidanu/werk/archive/0.8.4.tar.gz"
    version "0.8.4"
    sha256 "613aa5d9e980585e8c73d3fac5e0b2b56461330d524e316e317a165133e81a4d"
    license "MIT"

    depends_on "crystal" => :build
    depends_on "openssl@3"

    def install
        ["src/werk.cr", "shard.yml"].each do |file|
            data = File.read(file).gsub("0.0.0", version)
            File.open(file, "w") { |f| f.write(data) }
        end

        system "shards", "install", "--production", "--ignore-crystal-version"
        system "shards", "build", "--release", "--no-debug"
        bin.install "bin/werk" => "werk"
    end

    test do
        system "#{bin}/werk", "--version"
    end
end

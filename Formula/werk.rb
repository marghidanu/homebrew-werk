class Werk < Formula
    desc "Local CI pipeline runner with parallel execution and Docker support"
    homepage "https://github.com/marghidanu/werk"
    url "https://github.com/marghidanu/werk/archive/0.8.1.tar.gz"
    version "0.8.1"
    sha256 "ce66cff06e4e10bd68f0cce50789e52f2b88961578d8080a8eb45fa4e4df1d7a"
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

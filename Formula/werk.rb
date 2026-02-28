class Werk < Formula
    desc "Local CI pipeline runner with parallel execution and Docker support"
    homepage "https://github.com/marghidanu/werk"
    url "https://github.com/marghidanu/werk/archive/0.8.3.tar.gz"
    version "0.8.3"
    sha256 "a4b80669dde89952b941048f51634e9a86783df702d561c8ce1d320c3dbb34aa"
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

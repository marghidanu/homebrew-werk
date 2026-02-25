class Werk < Formula
    desc "Local CI pipeline runner with parallel execution and Docker support"
    homepage "https://github.com/marghidanu/werk"
    url "https://github.com/marghidanu/werk/archive/0.7.12.tar.gz"
    version "0.7.12"
    sha256 "a3a7a63d696f39349f94367019fb40a3eb0c7ee992a568f4a7c75daa02f643d5"
    license "MIT"

    depends_on "crystal" => :build

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

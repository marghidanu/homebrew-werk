class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/archive/0.7.10.tar.gz"
    version "0.7.10"
    sha256 "0748d67b656aabe2185db6ab53a70b3f93839ca61c6fe8c2397d4a3f6c88d088"
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

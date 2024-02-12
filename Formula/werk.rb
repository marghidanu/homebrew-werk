class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/archive/0.7.9.tar.gz"
    version "0.7.9"
    sha256 "94356dd0267353c7289089c1e921fd75b4cdb3f48fecff14843ee5a209e9d05e"
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

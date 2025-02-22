class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/archive/0.7.11.tar.gz"
    version "0.7.11"
    sha256 "42b3ea998fa74d8c557128ad9549e1efceff3cd4e7d6e921fe5a8ec2a881661d"
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

class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/archive/0.7.6.tar.gz"
    version "0.7.6"
    sha256 "f0f4337df4ad27d65c6d9667797935447969e240ef2a80404cb93a96a9e0723c"
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

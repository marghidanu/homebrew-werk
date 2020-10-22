class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/releases/download/0.1.3/werk-macos"
    version "0.1.3"
    sha256 "18059e8d7f914755895b00a3c9aa9980cf958468d61367cc6129698407e436ed"
    license "MIT"
    
    depends_on "libyaml"
    depends_on "libevent"
    depends_on "pcre"

    def install
        bin.install "werk-macos" => "werk"
    end

    test do
    end
end

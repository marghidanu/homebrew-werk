class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/releases/download/0.1.11/werk-macos-10.15"
    version "0.1.11"
    sha256 "489f803fad80b73a41a85af881dc2ec6871c36bb04411056ec0e3a7681d68aca"
    license "MIT"
    
    depends_on "libyaml"
    depends_on "libevent"
    depends_on "pcre"

    def install
        bin.install "werk-macos-10.15" => "werk"
    end

    test do
    end
end

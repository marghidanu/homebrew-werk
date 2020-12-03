class Werk < Formula
    desc "Dead simple task runner"
    homepage "https://itwerks.io"
    url "https://github.com/marghidanu/werk/releases/download/0.1.5/werk-macos-10.15"
    version "0.1.5"
    sha256 "7f62e1cfab55e4ac02e4a58bcda8255ad1fd2e1311cd02de92630340ac0494f6"
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

class Aria2Withlib < Formula
  desc "Download with resuming and segmented downloading"
  homepage "https://aria2.github.io/"
  url "https://github.com/aria2/aria2/releases/download/release-1.35.0/aria2-1.35.0.tar.xz"
  sha256 "1e2b7fd08d6af228856e51c07173cfcf987528f1ac97e04c5af4a47642617dfd"
  license "GPL-2.0-or-later"

  conflicts_with "aria2"
  
  bottle :unneeded

  depends_on "pkg-config" => :build
  depends_on "libssh2"

  uses_from_macos "libxml2"
  uses_from_macos "zlib"

  on_linux do
    depends_on "openssl@1.1"
  end

  def install
    ENV.cxx11

    args = %W[
      --disable-dependency-tracking
      --prefix=#{prefix}
      --with-libssh2
      --without-gnutls
      --without-libgmp
      --without-libnettle
      --without-libgcrypt
      --enable-libaria2
    ]
    on_macos do
      args << "--with-appletls"
      args << "--without-openssl"
    end
    on_linux do
      args << "--without-appletls"
      args << "--with-openssl"
    end

    system "./configure", *args
    system "make", "install"

    bash_completion.install "doc/bash_completion/aria2c"
  end

  test do
    (testpath/"test.cpp").write <<~EOS
      #include <aria2/aria2.h>
      int main(int argc, char **argv) {
        aria2::libraryInit();
        aria2::libraryDeinit();
        return 0;
      }
    EOS
    system ENV.cxx, "test.cpp", "-L#{lib}", "-laria2", "-o", "test"
    system "./test"
  end
end

class Aria2Withlib < Formula
  desc "Download with resuming and segmented downloading"
  homepage "https://aria2.github.io/"
  url "https://github.com/aria2/aria2/releases/download/release-1.37.0/aria2-1.37.0.tar.xz"
  sha256 "60a420ad7085eb616cb6e2bdf0a7206d68ff3d37fb5a956dc44242eb2f79b66b"
  license "GPL-2.0-or-later"

  conflicts_with "aria2"

  depends_on "pkg-config" => :build
  depends_on "libssh2"

  uses_from_macos "libxml2"
  uses_from_macos "zlib"

  on_linux do
    depends_on "openssl@3"
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

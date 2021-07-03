require_relative "../lib/php_pecl_formula"

class PhpAT73Memprof < PhpPeclFormula
  extension_dsl <<~EOS
    Memprof is a fast and accurate memory profiler that can be used
    to find the cause of memory leaks in PHP applications
  EOS

  url "https://pecl.php.net/get/memprof-3.0.1.tgz"
  sha256 "00471384e81990e8db9ce9b5e946dad42f313aeff0f1d10a8ce61bb38b02fff5"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "7c15b5180282547197baec693d92195ade905229aa2f9eb8c1bbfe26680a350b"
    sha256 catalina: "da8493c7fdca2430b119f0e7da82111817771e4769398b51d89d7f8ffc0b79c6"
    sha256 mojave:   "2f9d7441b59f7e2ecf972e64a618bf6c5972e42142a670f3905586d81f3e7305"
  end

  resource "judy" do
    url "https://downloads.sourceforge.net/project/judy/judy/Judy-1.0.5/Judy-1.0.5.tar.gz"
    sha256 "d2704089f85fdb6f2cd7e77be21170ced4b4375c03ef1ad4cf1075bd414a63eb"
  end

  def install
    resource("judy").stage do
      system "./configure", "--prefix=#{prefix}/judy"
      ENV.deparallelize do
        system "make", "install"
      end
    end

    configure_args << "--with-judy-dir=#{prefix}/judy"
    super
  end
end

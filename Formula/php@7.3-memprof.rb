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
    sha256 big_sur:  "0b6dd5aa8a9b3bd4b035ed98235684933d810b9bee81ff7a72177d271ebb754a"
    sha256 catalina: "c4dc4df1b4c82afed67036e133b11030446b2506abc4f78f71f1384784b2d91b"
    sha256 mojave:   "56b4a863803af2f58596306ede3edc8630d0fabcd48d00114f6a0cf1f7ee820b"
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

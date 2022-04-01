require_relative "../lib/php_pecl_formula"

class PhpAT74Memprof < PhpPeclFormula
  extension_dsl <<~EOS
    Memprof is a fast and accurate memory profiler that can be used
    to find the cause of memory leaks in PHP applications
  EOS

  url "https://pecl.php.net/get/memprof-3.0.2.tgz"
  sha256 "510bf09d58487820ac11b617446199ca86c50fda972dde73feaae667be23d183"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "8b1ab181bad3801de84cd3fd51baa94e579cb682e541b3cfb2f73dc62ea866e1"
    sha256 cellar: :any, big_sur:  "ea189f5cb8091f3179f87796ad7ebcf85bdb950cb2443e49b5797c7b277577af"
    sha256 cellar: :any, catalina: "9ac612145c8d0338926a340c92517daaa4bcc72cb434e4ec8854024207ca3edd"
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

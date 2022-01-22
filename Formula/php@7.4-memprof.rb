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
    sha256 big_sur:  "9e73cdcd19cf3382543ded8aaa6bf295a2c4de3026db2bfe19cda93beb141637"
    sha256 catalina: "de11b4e010fc0a62119a4a970e80c091146d1212c9e08ff2c3e00bbff38aa640"
    sha256 mojave:   "fefb9eac4b5ee0732f86d98a300d268bd99bd49b222af9417438eb21659598f3"
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

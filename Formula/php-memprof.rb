require_relative "../lib/php_pecl_formula"

class PhpMemprof < PhpPeclFormula
  extension_dsl <<~EOS
    Memprof is a fast and accurate memory profiler that can be used
    to find the cause of memory leaks in PHP applications
  EOS

  url "https://pecl.php.net/get/memprof-3.0.2.tgz"
  sha256 "510bf09d58487820ac11b617446199ca86c50fda972dde73feaae667be23d183"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "002738af1b37e607b6826fc663c3f92c666c6ba27f35e8061e8dd8d75a88240d"
    sha256 cellar: :any, monterey: "45747a987411606194cf051cacfed55c079afc9544d8e49ba551c184177b1b22"
    sha256 cellar: :any, big_sur:  "0526e4d2c5434e713e9c4aa20ffe308e16d02ac290cb3c2d92aaa585419bfae8"
    sha256 cellar: :any, catalina: "43a3b14bf0e078270ff2195eeefa27283ce4f669068dc7babfc8320d74179ade"
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

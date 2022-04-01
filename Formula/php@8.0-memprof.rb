require_relative "../lib/php_pecl_formula"

class PhpAT80Memprof < PhpPeclFormula
  extension_dsl <<~EOS
    Memprof is a fast and accurate memory profiler that can be used
    to find the cause of memory leaks in PHP applications
  EOS

  url "https://pecl.php.net/get/memprof-3.0.2.tgz"
  sha256 "510bf09d58487820ac11b617446199ca86c50fda972dde73feaae667be23d183"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, monterey: "1ceea05187e659ed1d6f7e3a7902319f1367d8c140a1781c4a6f8a1719dce50c"
    sha256 cellar: :any, big_sur:  "7713cc74515ac064c6e5895e7c2c6d5c408e8031625f073387f05478c7fa1ea7"
    sha256 cellar: :any, catalina: "b29182c65cf1a71c9821ccaf15dcfe0f886e89088bd52c25b6b2a99f69a42a1d"
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

require_relative "../lib/php_pecl_formula"

class PhpMemprof < PhpPeclFormula
  extension_dsl <<~EOS
    Memprof is a fast and accurate memory profiler that can be used
    to find the cause of memory leaks in PHP applications
  EOS

  url "https://pecl.php.net/get/memprof-3.0.2.tgz"
  sha256 "510bf09d58487820ac11b617446199ca86c50fda972dde73feaae667be23d183"
  revision 2
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "1e259d9ef096a720ddcca078da23664a0c652885ba5a16e2a2c06e9ead12486b"
    sha256 cellar: :any, ventura:  "4393a7a8b29bbb0f82022e56fd09b71b2775e7ce2d68015ca4c60df5abc62019"
    sha256 cellar: :any, monterey: "84b7a5c81c912a1ea6bbfddd615177c776d7185822ed4d1d5fe8f6259bf2ce48"
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

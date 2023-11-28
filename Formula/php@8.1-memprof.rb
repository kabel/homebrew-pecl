require_relative "../lib/php_pecl_formula"

class PhpAT81Memprof < PhpPeclFormula
  extension_dsl <<~EOS
    Memprof is a fast and accurate memory profiler that can be used
    to find the cause of memory leaks in PHP applications
  EOS

  url "https://pecl.php.net/get/memprof-3.0.2.tgz"
  sha256 "510bf09d58487820ac11b617446199ca86c50fda972dde73feaae667be23d183"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "847e31f18546bbec179f871060fa5d41bd0735578be5a23a34c78db5e39ea967"
    sha256 cellar: :any, ventura:  "5c0e7f302c81bb3a48c52fccda6c3b57b365b039b664c7cfcd7beea6d8ec8e0b"
    sha256 cellar: :any, monterey: "1482cf4294f3c28407a870d176088211a8bacf57a425e0453f1f2953cc10b114"
    sha256 cellar: :any, big_sur:  "56a18f19f7127a7f366a4d3d3bda4f6c8e9e33aa66f2ee2fd2946c261dfb102a"
  end

  deprecate! date: "2024-11-25", because: :unsupported

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

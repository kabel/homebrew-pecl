require_relative "../lib/php_pecl_formula"

class PhpAT82Memprof < PhpPeclFormula
  extension_dsl <<~EOS
    Memprof is a fast and accurate memory profiler that can be used
    to find the cause of memory leaks in PHP applications
  EOS

  url "https://pecl.php.net/get/memprof-3.0.2.tgz"
  sha256 "510bf09d58487820ac11b617446199ca86c50fda972dde73feaae667be23d183"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "ecead0fa7fbd52aa9f657d7b63268b8da3454c02f710af8e7272d9fa2d6348d4"
    sha256 cellar: :any, ventura:  "6fe24a72fda796ab96d624b13584191f8373d9a885b38888f6a84cdbc0576d12"
    sha256 cellar: :any, monterey: "b11840a79ee7fc916625ed7d507134a08b29d5946b7492ff7861591d34a73847"
  end

  deprecate! date: "2025-12-08", because: :unsupported

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

require_relative "../lib/php_pecl_formula"

class PhpAT74Memprof < PhpPeclFormula
  extension_dsl <<~EOS
    Memprof is a fast and accurate memory profiler that can be used
    to find the cause of memory leaks in PHP applications
  EOS

  url "https://pecl.php.net/get/memprof-3.0.1.tgz"
  sha256 "00471384e81990e8db9ce9b5e946dad42f313aeff0f1d10a8ce61bb38b02fff5"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "1dd5b50ab6785923b57b262bf34d2865d5c5bef1a3f456ad67ebda515f39dc67"
    sha256 catalina: "07c9ed653ffa7d4ea315c86677eadf94e53c8673b56b8cc352a54946957d4d97"
    sha256 mojave:   "7f223ca03da6df790040fe78e2b7628b23026cd5e80aabb54c8335c6cddd32b7"
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

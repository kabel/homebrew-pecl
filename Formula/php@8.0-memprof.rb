require_relative "../lib/php_pecl_formula"

class PhpAT80Memprof < PhpPeclFormula
  extension_dsl <<~EOS
    Memprof is a fast and accurate memory profiler that can be used
    to find the cause of memory leaks in PHP applications
  EOS

  url "https://pecl.php.net/get/memprof-3.0.1.tgz"
  sha256 "00471384e81990e8db9ce9b5e946dad42f313aeff0f1d10a8ce61bb38b02fff5"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "e02ea8f0d281e464e5ade810527dd8cde3c06983ab4156e23d607198f5834169"
    sha256 catalina: "5f882350fe08a8996b2379460ffac55860d9eacdaaeb354edd3fa5a472ba9585"
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

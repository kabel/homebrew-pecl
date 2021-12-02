require_relative "../lib/php_pecl_formula"

class PhpMemprof < PhpPeclFormula
  extension_dsl <<~EOS
    Memprof is a fast and accurate memory profiler that can be used
    to find the cause of memory leaks in PHP applications
  EOS

  url "https://pecl.php.net/get/memprof-3.0.1.tgz"
  sha256 "00471384e81990e8db9ce9b5e946dad42f313aeff0f1d10a8ce61bb38b02fff5"
  revision 1
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "fc1e564de6e2541bdd4c4c310c38f6b05008354bb6db6d2c12be6e94f6199f64"
    sha256 catalina: "99a9e0ab0167254b206d93f6f1e1a44918516c485f5799bd654e9085bd15ccbd"
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

require_relative "../lib/php_pecl_formula"

class PhpAT81Memprof < PhpPeclFormula
  extension_dsl <<~EOS
    Memprof is a fast and accurate memory profiler that can be used
    to find the cause of memory leaks in PHP applications
  EOS

  url "https://pecl.php.net/get/memprof-3.1.0.tgz"
  sha256 "231c8866fc86001659e98b0230d4a19799fd5a3621e8e709f490ea0e9cb7a48f"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "9e1f553aabc83acb568c9eeaff24b1271343c060f11c47a48dd770858e4cf463"
    sha256 cellar: :any, ventura: "ebc0e2fe25d69409d8503407c583dc04951759e6b35dba2c5300bccfe2f6e22c"
  end

  deprecate! date: "2025-12-31", because: :unsupported

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

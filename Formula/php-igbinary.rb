require_relative "../lib/php_pecl_formula"

class PhpIgbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.1.6.tgz"
  sha256 "b9bf87dc4d861c6769ae2a13b085395e2741505c629895ec4559781a5031fdea"
  revision 1
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "fed60da198f471144530cbba664761bf93dc505db0a040df6633a96bc3fb574c" => :catalina
    sha256 "a447c46e8b89d1450397949efaf325d1e0c9fdef1ab932aa0c299430017cf5dc" => :mojave
  end
end

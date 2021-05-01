require_relative "../lib/php_pecl_formula"

class PhpAT73Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.37.1.tgz"
  sha256 "2abefeea06491ac76862bacf16e78732ffbf4ffb0b0e4f74263d4f1a5c7745d6"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "e8b709fa2b9474fb0ddaa39fd7c8f107118cb75c739924522cb4bbf5ab4ef375"
    sha256 cellar: :any_skip_relocation, catalina: "ac36399554cb9b3431408c1c8d57305f33c40aeda00c241040e6ed1446d28ca4"
    sha256 cellar: :any_skip_relocation, mojave:   "4444e363f10affd44f99e3e06f1057d252d5d42f94969edcaa0c1e8e2e94ab75"
  end
end

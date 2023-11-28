require_relative "../lib/php_pecl_formula"

class PhpAT82Amqp < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/amqp-2.1.1.tgz"
  sha256 "c9b36f10c2e7b7da472440e21c35655c3bf41983b99bf1e438eac7d5bb1c2b45"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "cdd97f10c19c7a335aea700765382a47e9e9878b325dd7ac8a854a85d334f86f"
    sha256 cellar: :any, ventura:  "5cfe32b534ebd5cd0be8c090288822ae9da62976b47925ca39cb798096d863c5"
    sha256 cellar: :any, monterey: "b03e26370c6d7ed3f7ceeb455e91cfb1e481a356dde202f206b03e0c692c4c27"
  end

  deprecate! date: "2025-12-08", because: :unsupported

  depends_on "rabbitmq-c"
end

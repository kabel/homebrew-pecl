require_relative "../lib/php_pecl_formula"

class PhpAT74Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.1.tgz"
  sha256 "e17ad04e752e25fd099bddd2df9d26dfef183c8d00c4179bc9d7a2e1c97d7819"
  license "MIT"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "784012249546fcdcbd716cd7526145d030632578991f84b64f465e9599e3c57d" => :catalina
    sha256 "5cd41f06db4ba5b23651642caac6a5ce696643bfdd973ef1b904ca71cc347a1e" => :mojave
  end

  depends_on "libyaml"
end

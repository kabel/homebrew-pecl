require_relative "../lib/php_pecl_formula"

class PhpAT74Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.2.tgz"
  sha256 "119052f0461d57d86f44c252f9c9b2dd743486c701c1a0aba0aebecdd0d8b82a"
  license "MIT"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, catalina: "784012249546fcdcbd716cd7526145d030632578991f84b64f465e9599e3c57d"
    sha256 cellar: :any, mojave:   "5cd41f06db4ba5b23651642caac6a5ce696643bfdd973ef1b904ca71cc347a1e"
  end

  depends_on "libyaml"
end

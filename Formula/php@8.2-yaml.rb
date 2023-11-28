require_relative "../lib/php_pecl_formula"

class PhpAT82Yaml < PhpPeclFormula
  extension_dsl "YAML 1.1 serialization"

  url "https://pecl.php.net/get/yaml-2.2.3.tgz"
  sha256 "5937eb9722ddf6d64626799cfa024598ff2452ea157992e4e67331a253f90236"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "8f7fc6671e9fa736e50d12eaa47576b7dc599dba7dfd1947d5e3332cf575659c"
    sha256 cellar: :any, ventura:  "1dc1eac4d9fb24eb1b73634929c9d90cbda6e1cb28d70dd3a89e1f55dabe4377"
    sha256 cellar: :any, monterey: "79dbdd12c6e6fc2f83840727c0e1929f4f2c3cb447009eb428f70587e8fa83cf"
  end

  deprecate! date: "2025-12-08", because: :unsupported

  depends_on "libyaml"
end

require_relative "../lib/php_pecl_formula"

class PhpAT80Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.54.0.tgz"
  sha256 "5ad3c1a046290f901771fc3f557db6c5bdd4208e157f42a0ab061cf10ac0dfa9"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "399fb41ad9b2e4b15e3ffb1ce90acd8db52123a0b28d6b4291f840010a16fbc7"
    sha256 cellar: :any_skip_relocation, monterey: "907fc2c853f23bc6cef6abc2e1e9ea7385ea7387e2b267bc4cd9217ab7c45dd7"
    sha256 cellar: :any_skip_relocation, big_sur:  "d96b7e9f6aa5729f3c1efd328e9263694d04702e6b9f0c96b8339e56e8a4c7a4"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula
end

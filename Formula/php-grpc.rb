require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.54.0.tgz"
  sha256 "5ad3c1a046290f901771fc3f557db6c5bdd4208e157f42a0ab061cf10ac0dfa9"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "1acef33e0165f7239216e543034af5e7ab0c97ed109fa2a473c1e66711804474"
    sha256 cellar: :any_skip_relocation, monterey: "56677f074f5f686786ebad7a5d4631f36c92bbb1e115439dcbbdba0fb4843889"
    sha256 cellar: :any_skip_relocation, big_sur:  "6e3a8645eb0f838108a26da37b12029b5d10c403f606a353560157787d56f41f"
  end
end

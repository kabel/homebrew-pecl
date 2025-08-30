require_relative "../lib/php_pecl_formula"

class PhpAT82Raphf < PhpPeclFormula
  extension_dsl "Resource and persistent handles factory"

  url "https://pecl.php.net/get/raphf-2.0.2.tgz"
  sha256 "7e782fbe7b7de2b5f1c43f49d9eb8c427649b547573564c78baaf2b8f8160ef4"
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "0f83a5da937c73a84026b6f4164bab7bedc694bc0f7095b711ed1d79ddc52bfd"
    sha256 cellar: :any_skip_relocation, ventura: "6188db2a88f92022b19c0d19001554956129eb8e0a399e1454e9d48b6173e6e9"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  conf_order "05"
end

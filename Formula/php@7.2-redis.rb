require_relative "../lib/php_pecl_formula"

class PhpAT72Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.1.0.tgz"
  sha256 "4b4dca9d2d7f316486f55402f5a29bd976420f728ed731589c8bada973ec89e7"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "32cebca00276854de7ab00f38c0a3bf91ae7331e356a24c3b2b02c0badbfaa71" => :mojave
    sha256 "828cf457e83c33812f5b03e206418de5cbf84211dd46f88000d517d814cc6166" => :high_sierra
  end
end

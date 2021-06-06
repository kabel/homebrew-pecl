require_relative "../lib/php_pecl_formula"

class PhpAT74Grpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.38.0.tgz"
  sha256 "4bec8f981b7b074ed78bc42ef229dcfb6c5fe3782f29bc4980b4da00866d47f9"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "209db44371ad8f30670518c05dcfd327d17532f8d749d8a39bcaaa2979201c7e"
    sha256 cellar: :any_skip_relocation, catalina: "7e56f816567228e40317fdc77d1bdddb2d8e175b928388cf7bc34023aa64665a"
    sha256 cellar: :any_skip_relocation, mojave:   "952f1751ec05ee2012260baacc7456b894c858fbe03c8b10817f64e834874444"
  end
end

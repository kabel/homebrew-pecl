require_relative "../lib/php_pecl_formula"

class PhpGrpc < PhpPeclFormula
  extension_dsl "A high performance, open source, general RPC framework that puts mobile and HTTP/2 first"

  url "https://pecl.php.net/get/grpc-1.44.0.tgz"
  sha256 "f6d6be7e1bd49b3aae7ada97233fe68172100a71a23e5039acb2c0c1b87e4f11"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "dc55d7b847276a21133f13f3cfcbcf9236c22c58a81de5f463d49856b4378903"
    sha256 cellar: :any_skip_relocation, catalina: "0f6752e1fd1eda6ad7b4168a78ebd7851e7b1abe041289cee9cd669c5650a1f6"
  end
end

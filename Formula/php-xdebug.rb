require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.8.0.tgz"
  sha256 "cb1d117ecbec7409a408cf24e59d92f7e3816fe8e2331dd0ffc3dce60228c264"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "854705c353a125123320214b3c4e4d3cfa2e0d95b211a17cd437570f2e25d947" => :mojave
    sha256 "4cd946a615aa9cc45408e733b3c5b4e25ccf645ec7f08c257ff643bc284f05a0" => :high_sierra
  end

  def extension_type
    "zend_extension"
  end
end

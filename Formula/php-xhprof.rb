require_relative "../lib/php_pecl_formula"

class PhpXhprof < PhpPeclFormula
  extension_dsl "XHProf: A Hierarchical Profiler for PHP"

  url "https://pecl.php.net/get/xhprof-2.3.0.tgz"
  sha256 "09a5b5628ff5085fd79fb7bbecce0ad1f29d79c5708b78fbf5311b74ccb8d242"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "7d2c25134ec4dcc4ec7f9553daddeab4bcc36b91836dddfb543081e444ef1eee" => :catalina
    sha256 "a604e1c7f6dbf2452411a0ad889a167d4a63c09eddc6516afc538aa9c070fdf2" => :mojave
  end

  def source_dir
    "#{extension}-#{version}/extension"
  end
end

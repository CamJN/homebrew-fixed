class Turtle < Formula
  desc "Metapackage for turtle's deps & config"
  homepage "https://github.com/Jenniphyr/dot-files"
  head "file:///Users/jennifernarzt/Developer/dot-files"

  depends_on "cowsay"
  depends_on "figlet"
  depends_on "fortune"
  depends_on "lolcat"

  uses_from_macos "oh-my-zsh" # rubocop:disable FormulaAudit/UsesFromMacos,Style/DisableCopsWithinSourceCodeDirective,Cop/DisableComment
  uses_from_macos "zsh"

  patch :DATA

  def install
    pkgshare.mkpath
    pkgshare.install "turtle.plugin.zsh"
  end

  def caveats
    "This package exists to mark turtle's deps as deps, and provide config."
  end
end

__END__
diff --git turtle.plugin.zsh turtle.plugin.zsh
new file mode 100644
index 0000000..df52191
--- /dev/null
+++ turtle.plugin.zsh
@@ -0,0 +1,12 @@
+0="${ZERO:-${${0:#$ZSH_ARGZERO}:-${(%):-%N}}}"
+0="${${(M)0:#/*}:-$PWD/$0}"
+
+# ${0:h} to get plugin’s directory
+
+# MOTD config must be before plugins
+export ZSH_MOTD_DATABASE="$HOME/Developer/dot-files/usr/local/share/fortune/jenn"
+export ZSH_MOTD_COW="turtle"
+export ZSH_MOTD_ALWAYS="show the full header every time"
+export ZSH_MOTD_NO_WORD_OF_THE_DAY="disable the display of a random word"
+
+alias turtle="omz reload"
--


class Vobsub2srt < Formula
  desc "Convert idx/sub subtitles to srt using OCR"
  homepage "https://github.com/ruediger/VobSub2SRT"
  head "https://github.com/ruediger/VobSub2SRT.git", branch: "master"

  depends_on "cmake"
  depends_on "ffmpeg"
  depends_on "tesseract"

  def install
    needle = "set(CMAKE_REQUIRED_INCLUDES ${Tesseract_INCLUDE_DIR})"
    inreplace "CMakeModules/FindTesseract.cmake", needle, needle+"\n"+'set(CMAKE_REQUIRED_FLAGS "-std=c++11")'

    needle = "set(CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/CMakeModules)"
    inreplace "CMakeLists.txt", needle, needle+"\n"+"set(CMAKE_CXX_STANDARD 11)"

    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make", "install"
    end
  end
end

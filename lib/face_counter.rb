require "opencv"

module FaceCounter
  class << self
    def run
      if ARGV.size < 1
        STDERR.puts " $ #{$0} input.jpg"
        exit 1
      end

      input_filename = ARGV.shift

      image = OpenCV::IplImage::load input_filename
      haar_xml_file = File.join(File.dirname(__FILE__), 'haarcascade_frontalface_alt.xml')
      detector = OpenCV::CvHaarClassifierCascade::load haar_xml_file

      p detector.detect_objects(image).count
    end
  end
end

require "face_counter/version"

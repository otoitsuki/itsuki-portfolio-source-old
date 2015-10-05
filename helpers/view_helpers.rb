module ViewHelpers

  def site_metadata
    d||=YAML.load_file(File.join(File.dirname(__FILE__), '../source/data.yml'))
    return d
  end

end
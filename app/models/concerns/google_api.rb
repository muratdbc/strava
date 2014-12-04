require 'active_support/concern'

module GoogleApi
  def get_static_map(polyline_data)
    url = 'https://maps.googleapis.com/maps/api/staticmap'
    # center, zoom not required with polyline
    # | encoding is %7C
    size = '400x400'# 400x400  pixels_wide x pixels_high
    # format = # optional, default is png
    # path = # pathstyles|enc:#{polyline_data}
    path = "enc:#{polyline_data}"
    key = ENV['GOOGLEAPI']

    response = HTTParty.get( url, query: {'size'  => size,
                                          'path'  => path,
                                          'key'   => key} )
    p response

  end
end

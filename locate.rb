#!/usr/bin/env ruby

require 'rubygems'
require 'json'
require 'rosumi'

r = Rosumi.new('user', 'pass')

r.devices().each do |id,device|
    if device[:type] == 'iPhone'
        location = r.locate_device(id)

        geo = {:type => 'Feature', :properties => {:name => 'Boris Buegling'},
            :geometry => {:type => 'Point', 
                :coordinates => [location[:longitude], location[:latitude]]} }
        print geo.to_json + "\n"

        break
    end
end

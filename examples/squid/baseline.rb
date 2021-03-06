# By default, <code>chart</code> plots a baseline at the bottom of the graph.
#
# You can use the <code>:baseline</code> option to disable this behavior.
#
filename = File.basename(__FILE__).gsub('.rb', '.pdf')
Prawn::ManualBuilder::Example.generate(filename) do
  data = {earnings: {2013 => 182, 2014 => 46, 2015 => 8020}}
  chart data, baseline: false, formats: [:currency]
end

class MyApp
  def initialize
    @view = ->(env) {env.each_pair.map {|key, value| "<b>#{key}</b> = #{value}<br />"}}
  end
  def call env
    [200, {"Content-Type" => "text/html"}, @view.call(env)]
  end
end


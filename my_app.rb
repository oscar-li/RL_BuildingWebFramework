class MyApp
  def initialize
    @view = ->(env) {env.keys.sort.map {|key| "<b>#{key}</b> = #{env[key]}<br />"}}
  end
  def call env
    [200, {"Content-Type" => "text/html"}, @view.call(env)]
  end
end


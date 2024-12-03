class OpenAiService
  def initializer
    @client = OpenAI::Client.new
  end


  def form_request(form)
  end
end

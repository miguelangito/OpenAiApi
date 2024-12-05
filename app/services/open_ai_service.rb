class OpenAiService
  def self.initialize
    @client = OpenAI::Client.new(access_token: ENV["OPENAI_ACCESS_TOKEN"])
  end

  def self.form_request(form)
    prompt = "Usuario: #{form.description}. Responde de manera clara y concisa."

    begin
      response = @client.chat(
        parameters: {
          model: "gpt-4",
          messages: [
            { role: "system", content: "Eres un asistente que responde preguntas de formularios y ayudas al usuario." },
            { role: "user", content: prompt }
          ],
          max_tokens: 100
        }
      )
      response.dig("choices", 0, "message", "content")
    rescue OpenAI::Error => e
      # Manejar el error, por ejemplo, loguearlo o mostrar un mensaje al usuario
      Rails.logger.error("Error en la solicitud a OpenAI: #{e.message}")
      "Error al procesar la solicitud."
    end
  end
end

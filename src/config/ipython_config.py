c = get_config()
c.InteractiveShellApp.extensions.append("jupyter_ai_magics")
c.AiMagics.default_language_model = "ollama:qwen2.5-coder:1.5b"
# config/jupyter_server_config.py
import os

c = get_config()

c.ServerApp.ip = "0.0.0.0"
c.ServerApp.port = 8888
c.ServerApp.base_url = os.getenv("NB_PREFIX", "/")
c.ServerApp.root_dir = "/home/jovyan"
c.ServerApp.open_browser = False
c.ServerApp.token = ""
c.ServerApp.password = ""
c.ServerApp.disable_check_xsrf = True
c.ServerApp.allow_origin = "*"
c.ServerApp.trust_xheaders = True
c.ServerApp.tornado_settings = {
    "headers": {
        "Content-Security-Policy": "frame-ancestors 'self' *"
    }
}
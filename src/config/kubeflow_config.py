# -------------------------------------------------------------------
# Configure Jupyter Server for Kubeflow (Base URL, token, XSRF)
# -------------------------------------------------------------------
import os

# Kubeflow sets NB_PREFIX e.g. to /notebook/<namespace>/<notebook-name>
c.ServerApp.base_url = os.environ.get("NB_PREFIX", "/")

# Disable Jupyter-side authentication (Kubeflow handles it)
c.ServerApp.token = ""
c.ServerApp.password = ""

# Allow remote access for Kubeflow/Istio
c.ServerApp.allow_origin = "*"
c.ServerApp.disable_check_xsrf = True
c.ServerApp.allow_remote_access = True

#!/command/execlineb -P

# Import the container environment into the script
with-contenv

# Default NB_PREFIX = '/'
importas -d "" NB_PREFIX NB_PREFIX

# Run as jovyan
# s6-setuidgid jovyan \ We are already running as jovyan
jupyter lab \
  --ServerApp.ip=0.0.0.0 \
  --ServerApp.port=8888 \
  --ServerApp.base_url="${NB_PREFIX}" \
  --ServerApp.root_dir=/home/jovyan \
  --ServerApp.allow_origin="*" \
  --ServerApp.disable_check_xsrf=True \
  --ServerApp.open_browser=False

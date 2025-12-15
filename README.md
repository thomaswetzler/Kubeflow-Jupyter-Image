# Kubeflow-Jupyter-Image
Custom Kubeflow Jupyter Images

In this repository, I build and document a modern JupyterLab image tailored for Kubeflow environments. The focus is on running JupyterLab 4 with multiple Python versions in a single image, while remaining fully compatible with Kubeflow’s expectations around routing, authentication, and persistent storage.

The repository demonstrates how standard Jupyter Docker images can be extended with controlled initialization logic, global kernel registration, and sensible defaults for AI-assisted workflows. It also shows why Kubeflow requires more than a plain Jupyter image and how these requirements can be addressed without relying on the deprecated Kubeflow notebook images.

The image is designed for production use and integrates cleanly into the Kubeflow Notebook UI.

A detailed explanation of the design decisions and technical challenges can be found in the accompanying article on [Medium](https://medium.com/@linos2/custom-kubeflow-jupyter-image-9e86b88f19c7).

--------

GitHub Repository Setup

If you fork or copy this repository, you need to configure GitHub repository secrets to enable publishing the image to Docker Hub.

Specifically, the following secrets must be defined in the repository settings:
	•	DOCKERHUB_USERNAME
	•	DOCKERHUB_TOKEN

These variables are used by the GitHub Actions workflow to authenticate against Docker Hub and push the built image. Without them, the build will still run, but the image will not be published.

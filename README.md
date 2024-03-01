# jupyter-docker

## Instructions

1. Build image using the build script run
`./build`
2. Run the container using:
`./run`
3. The run command executes `bash` inside the container
4. Run `jnotebook` to start Jupyte notebooks, or run `jlab` to run Jupyter Lab
5. After the server started, copy the URL similar to http://127.0.0.1:8888/?token=xxxx and paste it in your browser address bar to get access to the page.

All your notebooks are saved in src/notebooks, It is shared volume between your computer and container.
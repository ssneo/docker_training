import os


os.system("docker stop training")
os.system("docker rm training")

os.system("docker image rm training")

os.system("docker build . -t training")

#os.system("docker run -d -v ~/research/mpc/docker_training:/docker_training --name training training")
os.system("docker run -d s--name training training")
os.system("docker exec -it training bash")

#os.system("docker run -it -v ~/research/dap:/dap -v ~/research/dap_data:/dap_data --name dap dap")
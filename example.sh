#if folder not exist)
mkdir docker
cd docker
time=$(date "+%Y-%m-%d %H:%M:%S")
echo '#'$time >> dockerfile
echo 'print("HELLLLLO WORRRRRRLD")' >> hello.py
echo "FROM python:3.6.2
#COPY requirements.txt ./
#RUN pip install  -r requirments.txt -i https://mirrors.aliyun.com/pypi/simple
ADD ./hello.py /hello/
WORKDIR /hello
CMD [\"python\",\"hello.py\"]" >> dockerfile

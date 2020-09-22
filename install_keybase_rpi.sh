echo go get keybase && \
go get github.com/keybase/client/go/keybase  && \

echo go build keybase && \
go build -tags production github.com/keybase/client/go/keybase  && \
sudo mv keybase /usr/bin/ && \

echo go build kbfsfuse && \
go build -tags production github.com/keybase/client/go/kbfs/kbfsfuse && \
sudo mv kbfsfuse /usr/bin/ && \

echo go build git-remote-keybase && \
go build -tags production github.com/keybase/client/go/kbfs/kbfsgit/git-remote-keybase && \
sudo mv git-remote-keybase /usr/bin/ && \

echo go build redirector && \
go build -tags production github.com/keybase/client/go/kbfs/redirector && \
sudo mv redirector /usr/bin/keybase-redirector && \

sudo mkdir -p /opt/keybase && \
sudo wget -q https://raw.githubusercontent.com/keybase/client/master/packaging/linux/crypto_squirrel.txt -P /opt/keybase/ && \
sudo wget -q https://raw.githubusercontent.com/keybase/client/master/packaging/linux/post_install.sh -P /opt/keybase/ && \

echo installing systemd services && \
sudo wget -q https://raw.githubusercontent.com/keybase/client/master/packaging/linux/systemd/keybase.service -P /usr/lib/systemd/user/ && \
sudo wget -q https://raw.githubusercontent.com/keybase/client/master/packaging/linux/systemd/kbfs.service -P /usr/lib/systemd/user/ && \
sudo wget -q https://raw.githubusercontent.com/keybase/client/master/packaging/linux/systemd/keybase-redirector.service -P /usr/lib/systemd/user/ && \

sudo chmod +x /opt/keybase/post_install.sh && \
sudo /opt/keybase/post_install.sh && \
curl https://raw.githubusercontent.com/keybase/client/master/packaging/linux/run_keybase > run_keybase && \
chmod +x ./run_keybase #&& \
#./run_keybase -g

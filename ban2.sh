echo '===== Realm 启动信息 ====='
ps -p 963 -o pid,args
cat /proc/963/cgroup

echo '===== Realm 配置中的端点字段 ====='
grep -nE '^\[\[endpoints\]\]|^[[:space:]]*(listen|remote)[[:space:]]*=' \
  /root/.realm/config.toml

echo '===== Realm 相关 systemd 服务 ====='
systemctl list-units --type=service --all | grep -i realm || true

echo '===== 当前网络命名空间 ====='
readlink /proc/963/ns/net
readlink /proc/1/ns/net

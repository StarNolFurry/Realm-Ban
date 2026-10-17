echo '===== 系统版本 ====='
cat /etc/os-release | grep -E 'PRETTY_NAME|VERSION_ID'

echo '===== 网卡与 IPv6 路由 ====='
ip -br link
ip -6 route show default

echo '===== IPv4 路由（如有） ====='
ip -4 route show default

echo '===== 现有队列规则 ====='
tc -s qdisc show

echo '===== Realm 进程 ====='
pgrep -a realm || true

echo '===== Realm 监听端口 ====='
ss -lntup

echo '===== IFB 模块状态 ====='
lsmod | grep '^ifb' || true

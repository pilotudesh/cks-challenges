trivy image nginx:alpine | grep Total
trivy image bitnami/nginx | grep Total
trivy image nginx:1.13 | grep Total
trivy image nginx:1.17 | grep Total
trivy image nginx:1.16 | grep Total
trivy image nginx:1.14 | grep Total

mv /root/usr.sbin.nginx /etc/apparmor.d/usr.sbin.nginx
apparmor_parser -q /etc/apparmor.d/usr.sbin.nginx
aa-status | grep custom-nginx

alias k=kubectl
k delete pvc alpha-pvc -n alpha
k apply -f alpha.yaml
k get pvc,pv,deploy,networkpolicy,svc -n alpha

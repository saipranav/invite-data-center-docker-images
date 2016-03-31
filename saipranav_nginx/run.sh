export PORT=$(echo $NOMAD_ADDR_http | cut -d':' -f 2)
envsubst '$PORT:$SERVICE' </opt/consul_template/nginx.ctmpl >/opt/consul_template/nginx.temp.ctmpl
rm /opt/consul_template/nginx.ctmpl && cp /opt/consul_template/nginx.temp.ctmpl /opt/consul_template/nginx.ctmpl && rm /opt/consul_template/nginx.temp.ctmpl
/usr/local/bin/consul-template -config "/etc/consul_template.d" >>/var/log/consul_template.log 2>&1
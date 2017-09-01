# ghetto require, since mruby doesn't have require
# eval(File.read('/app/bin/config/lib/nginx_config_util.rb'))
#
# USER_CONFIG = "/app/static.json"
#
# config = {}
# config = JSON.parse(File.read(USER_CONFIG)) if File.exist?(USER_CONFIG)
# req    = Nginx::Request.new

# allow_ips = config["allow_ips"]
# Nginx.echo "allow_ips: #{allow_ips}"
# req.headers_out["X-ALLOW-IPS"] = allow_ips
#
# def restrict
#   req.headers_out["X-RESTRICT"] = "1"
#   unless allow_ips.empty?
#     req.headers_out["X-RESTRICT"] = "2"
#     real_ip = req.headers_in["X-Forwarded-For"]
#     Nginx.echo "real_ip: #{real_ip}"
#     return Nginx::HTTP_FORBIDDEN if allow_ips.none? { |ip| ip == real_ip }
#   end
#
#   Nginx::DECLINED
# end
#
# Nginx.return restrict

Nginx.return Nginx::HTTP_UNAUTHORIZED

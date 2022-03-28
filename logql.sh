
rate({namespace="default",pod=~"php-apache-7656945b6b-zl7nz|php-apache-7656945b6b-v5tpw"}[$__interval] | pattern `<ip> - - <_> "<method> <uri> <_>" <status> <size> <_> "<agent>" <_>` | status="404")

rate({namespace="default",pod=~"php-apache-7656945b6b-zl7nz|php-apache-7656945b6b-v5tpw"}[$__interval] | pattern `<ip> - - <_> "<method> <uri> <_>" <status> <size> <_> "<agent>" <_>` | status="200")

{namespace="default",pod=~"php-apache-7656945b6b-v5tpw|php-apache-7656945b6b-zl7nz"} | pattern `<ip> - - <_> "<method> <uri> <_>" <status> <size> <_> "<agent>" <_>` | status="404"

{namespace="default",pod=~"php-apache-7656945b6b-v5tpw|php-apache-7656945b6b-zl7nz"} | pattern `<ip> - - <_> "<method> <uri> <_>" <status> <size> <_> "<agent>" <_>` | status="200"

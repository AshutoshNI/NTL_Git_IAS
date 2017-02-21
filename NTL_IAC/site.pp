import 'classes/*.pp'

class toolbox {
        file {'/usr/local/sbin/puppetsimple.sh':
                owner => root, group => root, mode => 0755,
                content => "#!/bin/sh\npuppet agent --onetime --no-daemonize --verbose $1\n",
        }

}

node 'devops5.srxn3kmjstaephhz5cl5izqttb.tx.internal.cloudapp.net' {
include toolbox
include java
include tomcat
}

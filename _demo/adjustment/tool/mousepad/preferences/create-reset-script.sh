#!/usr/bin/env bash

echo '#!/usr/bin/env bash' > reset.sh
echo >> reset.sh

./get.sh | sort -u | awk '{print "gsettings reset "$1" "$2}' >> reset.sh

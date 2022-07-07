#/bin/bash

set -e

for f in README.md features-current-and-future.md congame-doc/LICENSE Dockerfile* $(find congame-{core,doc,example-study,identity,pjb-studies,price-lists,smtp-proxy,tests,web} -type f -name '*.rkt') $(ls congame-web-migrations/*.sql) $(ls congame-identity-migrations/*.sql) $(find resources/{css,js} -type f -regex '.*\(.css\|.scss\|.js\)') $(ls -p data-tools/*.{sh,R,Rproj} | grep -v /) $(ls -p ci/* | grep -v /); 
do 
    echo "########## START OF FILE: ${f} ##########"
    echo " "
    cat ${f}
    echo " "
    echo "########## END OF FILE ${f}  ##########"
done

bash <(curl -s -L https://detect.synopsys.com/detect8.sh) \
--blackduck.url=$BDURL \
--blackduck.api.token=${SCANTOKEN} \

--detect.project.name=${BD_PROJECT} \
--detect.project.version.name=${BD_VERSION} \
--detect.excluded.directories=target,test,tests,.github,.git,.mvn,dist,e2e \
--detect.detector.search.depth=1 \
--logging.level.com.synopsys.integration=DEBUG \

--detect.nuget.excluded.modules=’Test’ \
--detect.maven.excluded.scopes=test \
--detect.go.mod.dependency.types.excluded=UNUSED \
--detect.npm.dependency.types.excluded=DEV \
--detect.yarn.dependency.types.excluded=NON_PRODUCTION \
--detect.lerna.package.types.excluded=PRIVATE \
--detect.packagist.dependency.types.excluded=DEV \
--detect.bitbake.dependency.types.excluded=BUILD \
--detect.conan.dependency.types.excluded=BUILD \
--detect.pub.dependency.types.excluded=DEV \
--detect.ruby.dependency.types.excluded=DEV \

--detect.blackduck.signature.scanner.upload.source.mode=true  \
--detect.blackduck.signature.scanner.copyright.search=true  \
--detect.blackduck.signature.scanner.license.search=true  \
--detect.blackduck.signature.scanner.snippet.matching=SNIPPET_MATCHING  \
--detect.blackduck.signature.scanner.individual.file.matching=ALL \

--detect.binary.scan.file.path=*.zip \
--detect.tools=BINARY_SCAN \

--detect.diagnostic=true \
--detect.diagnostic.extended=true 

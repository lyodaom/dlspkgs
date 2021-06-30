{ epicsRepoBaseUrl, fetchgit, buildEpicsModule, dls-epics-asyn }:

buildEpicsModule {
  name = "dls-epics-busy";
  buildInputs = [ dls-epics-asyn ];
  extraEtc = ./etc;
  src = fetchgit {
    url = "https://github.com/epics-modules/busy";
    rev = "R1-7-3";
    sha256 = "1y9k2hqhwkagkas8yrmrc71yvlsyjrhmr4krsijv44jyw2w9bhi2";
    fetchSubmodules = false;
  };
}

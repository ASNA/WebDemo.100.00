
setEnterprisePlatformsVisible = (element) => {
    let enterprisePlatforms = document.getElementById('enterprise-platforms');

    // Hide enterprise platforms elements for local DB. 
    if (element.value === 'LOCALDB') {
        enterprisePlatforms.setAttribute('hidden', 'true');
    }
    else {
        enterprisePlatforms.removeAttribute('hidden');
    }
}

rp.Lib.documentReady(() => {
    let platformElement = document.getElementById('formPlatform');
    setEnterprisePlatformsVisible(platformElement);

    platformElement.addEventListener('change', function () {
        setEnterprisePlatformsVisible(this);
    })
    
    if (typeof pageStatus == 'function') {
        pageStatus();
    }
});
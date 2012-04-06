
if (typeof Cordova !== "undefined") {
	var Globalization = function() {
	};

Globalization.prototype.getPreferredLanguage = function(successCB, failureCB)
{
	// successCallback required
	if (typeof successCB != "function") {
        console.log("Globalization.getPreferredLanguage Error: successCB is not a function");
        return;
    }

    // errorCallback required
    if (typeof failureCB != "function") {
        console.log("Globalization.getPreferredLanguage Error: failureCB is not a function");
        return;
    }

	Cordova.exec(successCB, failureCB, "Globalization","getPreferredLanguage", []);
};

Globalization.install = function()
{
	if(!window.plugins)
	{
		window.plugins = {};
	}

	window.plugins.globalization = new Globalization();
	return window.plugins.globalization;
};

	Cordova.addConstructor(Globalization.install);
};


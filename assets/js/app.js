"use strict";

var rp = rp || {};

rp.Lib = {};

rp.Lib = class Core {
    static documentReady(fn) {
        if (document.attachEvent ? document.readyState === "complete" : document.readyState !== "loading") {
            fn();
        } else {
            document.addEventListener('DOMContentLoaded', fn);
        }
    }

    static fadeOutHtmlElement(element) {
        var op = 1; // initial opacity
        var timer = setInterval(function () {
            if (op <= 0.1) {
                clearInterval(timer);
            }
            element.style.opacity = op;
            op -= 0.07;
        }, 250);

        setTimeout(function () {
            element.parentNode.removeChild(element)
        }, 2500);
    }

    static getQueryStringParameter(name, url) {
        if (!url) url = window.location.href;
        name = name.replace(/[\[\]]/g, "\\$&");
        var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
            results = regex.exec(url);
        if (!results) return null;
        if (!results[2]) return '';
        return decodeURIComponent(results[2].replace(/\+/g, " "));
    }
}

rp.Lib.documentReady(() => {
    let classNames = {
        'updated': 'alert-success',
        'not-found': 'alert-danger',
        'added': 'alert-info',
        'canceled' : 'alert-warning'
    };

    let customerNumber = rp.Lib.getQueryStringParameter('number');
    let action = rp.Lib.getQueryStringParameter('action');
    if (customerNumber && action) {
        let messageElement = document.getElementById('flash-message');
        messageElement.classList.add('alert', classNames[action]);

        action = action.replace('-', ' ');

        if (action === 'canceled') {
            messageElement.innerHTML = 'Last operation was canceled';
        }
        else {
            messageElement.innerHTML = `Customer number ${customerNumber} was ${action}`;
        }
        messageElement.style.display = 'block';
        rp.Lib.fadeOutHtmlElement(messageElement,6000);
    }
})

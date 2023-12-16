// src: https://github.com/JorelAli/mdBook-pagetoc

// Un-active everything when you click it
Array.prototype.forEach.call(document.getElementsByClassName("pagetoc")[0].children, function(el, i) {
    el.addEventHandler("click", function() {
        Array.prototype.forEach.call(document.getElementsByClassName("pagetoc")[0].children, function(el, i) {
            el.classList.remove("active");
        });
        el.classList.add("active");
    });
});

var updateFunction = function() {

    var id;
    var elements = document.getElementsByClassName("header");
    /*Array.prototype.forEach.call(elements, function(el, i) {
        if (window.pageYOffset >= el.offsetTop) {
            id = el;
        }
    });*/
    // Array.prototype.filter.call(els, function(x){return true;})
    
    elements = Array.prototype.filter.call(elements,
        function(x) { 
            return !x.parentElement.classList.contains("pagetoc-exclude") 
            && (x.parentElement.classList.contains("pagetoc-include")
            || ["H1","H2","H3","H4"].includes(x.parentElement.tagName));
        });
    // Array.prototype.map.call(els, function(el, i) { return el.parentElement.classList; } )
    
    /*console.log(window.scrollY, Array.prototype.map.call(elements,
        function(x) { return x.parentElement.id + " : " + JSON.stringify(x.offsetTop)
         + " : " + JSON.stringify(window.scrollY); }));*/
    console.log(Array.prototype.every.call(elements, 
        function(el) { 
            if(window.scrollY >= el.offsetTop) {
                id = el; return true;
            } else { return false; }
    }), id);

    // console.log(id);

    var ptc = document.getElementsByClassName("pagetoc")[0].children;

    if(id === undefined) {
        Array.prototype.forEach.call(ptc, function(x){
            x.classList.remove("active");
        });
        return;
    }
    
    var activeElems = Array.prototype.forEach.call(ptc, function(el, i) {
        if(el.classList.contains("active")) {
            if(id.href.localeCompare(el.href)==0) {
                return true;
            } else {
                el.classList.remove("active");
                return false;
            }
        } else {
            if(id.href.localeCompare(el.href)==0) {
                el.classList.add("active");
            }
            return false;
        }
    });
        
    /*activeElem = Array.prototype.find.call(ptc, 
        function(x) { return x.classList.contains("active"); });
    if ((activeElem !== undefined) && (id.href.localeCompare(activeElem.href)==0)) {
        return; // The correct element is already active.
    } else {
        
    }*/
    
    

    /*Array.prototype.forEach.call(document.getElementsByClassName("pagetoc")[0].children, function(el, i) {
        if ((id !== undefined) && (id.href.localeCompare(el.href) == 0)) {
            el.classList.add("active");
        }
    });*/
};

// Populate sidebar on load
window.addEventListener('load', function() {
    var pagetoc = document.getElementsByClassName("pagetoc")[0];
    var elements = document.getElementsByClassName("header");
    // var elemArray = Array.apply((x)=>{x}, elements);
    Array.prototype.forEach.call(elements, function(el, i) {
        if(el.classList.contains("pagetoc-exclude")
        || el.parentElement.classList.contains("pagetoc-exclude")) {
            return;
        }

        // Indent shows hierarchy
        
        var indent = "";
        switch (el.parentElement.tagName) {
            case "H2":
                indent = "20px";
                break;
            case "H3":
                indent = "40px";
                break;
            case "H4":
                indent = "60px";
                break;
            case "H5":
            case "H6":
                if (!el.classList.contains("pagetoc-include")) {
                    return;//indent = "80px";
                }
            default: // TODO: Warn?
                break;
        }

        var link = document.createElement("a");
        link.appendChild(document.createTextNode(el.text));
        link.style.paddingLeft = indent;
        link.href = el.href;
        pagetoc.appendChild(link);
    });
    updateFunction.call();
});



// Handle active elements on scroll
window.addEventListener("scroll", updateFunction);

let typed = document.querySelector(".typed");
let cursor = document.querySelector(".cursor");
let strings = ["a Web Developer", "a Programmer", "a Designer", "an Artist"];

function commonPrefix(str1) {
    let prefix = "";
    let n = str1.length;
    for (let i = 0; i < n; i++) {
        for (let j = 0; j < n; j++) {
            if (str1[i] != str1[j]) {
                return prefix;
            }
        }
        prefix += str1[i];
    }
    return prefix;
}


function sleep(ms) {
    return new Promise((resolve) => setTimeout(resolve, ms));
}

async function typeWriter(text, element, speed) {
    let i = 0;
    while (i < text.length) {
        element.innerHTML += text.charAt(i);
        i++;
        await sleep(speed);
    }
}

async function deleteWriter(element, speed) {
    let text = element.innerHTML;
    let i = text.length - 1;
    while (i >= 0) {
        element.innerHTML = text.slice(0, i);
        i--;
        await sleep(speed);
    }
}

async function typeLoop() {
    let common = commonPrefix(strings);
    typed.innerHTML = common;
    for (let i = 0; i < strings.length; i++) {
        strings[i] = strings[i].slice(common.length);
    }
    while (true) {
        for (let i = 0; i < strings.length; i++) {
            await typeWriter(strings[i], typed, 75);
            cursor.classList.add("blinking");
            await sleep(1000);
            cursor.classList.remove("blinking");
            await deleteWriter(typed, 75);
            // await sleep(500);
        }
    }
}

typeLoop();
const elements = document.querySelectorAll("*");
const observer = new IntersectionObserver(
    (entries, observer) => {
        entries.forEach((entry) => {
            if (entry.isIntersecting) {
                entry.target.classList.add("animate");
                observer.unobserve(entry.target);
            }
        });
    },
    { threshold: 0.33 }
);

elements.forEach((element) => {
    observer.observe(element);
});
showside = document.getElementById("showside");
sidebar = document.querySelector(".sidebar");
showside.addEventListener("click", () => {
    openSideBar();
});

hideside = document.getElementById("hideSide");
hideside.addEventListener("click", () => {
    closeSideBar();
});

let active = document.querySelector(".timeline-read.active");

document.addEventListener("click", (e) => {
    if (!sidebar.contains(e.target) && !showside.contains(e.target)) {
        closeSideBar();
    }
});

document.addEventListener("scroll", () => {
    closeSideBar();
});

document.querySelectorAll(".sidebar a").forEach((element) => {
    element.addEventListener("click", () => {
        closeSideBar();
    });
});

function openSideBar() {
    sidebar.classList.remove("close-sidebar");
    sidebar.classList.add("open-sidebar");
    sidebar.style.display = "flex";
}

function closeSideBar() {
    sidebar.classList.remove("open-sidebar");
    sidebar.classList.add("close-sidebar");
    setTimeout(() => {
        sidebar.style.display = "none";
    }, 500);
}

document.querySelectorAll(".timeline-read").forEach((element) => {
    element.addEventListener("click", () => {
        if (element.classList.contains("active")) {
            element.classList.remove("active");
            return;
        }
        active = document.querySelector(".timeline-read.active");
        if (active) active.classList.remove("active");
        // document.querySelector(".timeline-read.active").classList.remove("active");
        element.classList.add("active");
    });
});

document.querySelector(".services-list").onmousemove = e => {
    document.querySelectorAll(".services-list div").forEach((target) => {
        // const {currentTarget: target} = e;
        const rect = target.getBoundingClientRect(),
            x = e.clientX - rect.left,
            y = e.clientY - rect.top;
        target.style.setProperty('--mouse-x', `${x}px`);
        target.style.setProperty('--mouse-y', `${y}px`);
    });
};
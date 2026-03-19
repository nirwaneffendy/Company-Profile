// Refined Technical Log
const logs = [
  "Inbound: Laptop_Motherboard_Check",
  "Status: Components_Diagnostics_OK",
  "Success: Firmware_Update_Done",
  "Optimized: Surveillance_Network",
  "Log: Printer_Calibration_Success",
  "Ready: Secure_Connection_Active"
];

function updateLog() {
  const popup = document.getElementById("popup");
  const span = document.getElementById("log-message");
  if (!popup || !span) return;

  span.textContent = logs[Math.floor(Math.random() * logs.length)];
  
  popup.style.display = "flex";
  popup.style.opacity = "0";
  popup.style.transform = "translateY(5px)";
  popup.style.transition = "all 0.2s ease-out";

  setTimeout(() => {
    popup.style.opacity = "1";
    popup.style.transform = "translateY(0)";
  }, 50);

  setTimeout(() => {
    popup.style.opacity = "0";
    popup.style.transform = "translateY(5px)";
    setTimeout(() => {
      popup.style.display = "none";
    }, 200);
  }, 3500);
}

// Faster sequence for compact feel
setTimeout(() => {
  updateLog();
  setInterval(updateLog, 15000);
}, 3000);


// Fast Technical Reveal
const observer = new IntersectionObserver((entries) => {
  entries.forEach((entry, index) => {
    if (entry.isIntersecting) {
      setTimeout(() => {
        entry.target.style.opacity = "1";
        entry.target.style.transform = "translateY(0)";
      }, index * 50);
      observer.unobserve(entry.target);
    }
  });
}, { threshold: 0.1 });

document.querySelectorAll('.card, .hero > *, .trust-item, .testimonial-card').forEach(el => {
  el.style.opacity = "0";
  el.style.transform = "translateY(15px)";
  el.style.transition = "all 0.4s cubic-bezier(0.16, 1, 0.3, 1)";
  observer.observe(el);
});

// Cursor Grid Position (Subtle)
document.addEventListener('mousemove', (e) => {
  const x = (e.clientX / window.innerWidth) * 10;
  const y = (e.clientY / window.innerHeight) * 10;
  document.body.style.backgroundPosition = `${x}px ${y}px, ${x + 12}px ${y + 12}px`;
});

// Proactively hide Elfsight branding
const hideBranding = () => {
  const links = document.querySelectorAll('a[href*="elfsight.com"], [class*="eapps-link"]');
  links.forEach(link => {
    link.style.display = 'none';
    link.style.visibility = 'hidden';
    link.style.opacity = '0';
    link.style.height = '0';
  });
};

// Check for branding periodically - Optimized interval
let brandingInterval = setInterval(hideBranding, 3000); // Increased from 1000ms
window.addEventListener('load', () => {
  hideBranding();
  // Stop interval after 15 seconds to save resources
  setTimeout(() => clearInterval(brandingInterval), 15000);
});

// --- ABSOLUTE REAL-TIME VISITOR COUNTER (v7 - DEFINITIVE) ---
// This version starts at 0 with a brand new key and forces synchronization across all devices.

const visitorElement = document.getElementById('visitor-count');
const namespace = 'nirwan-computer-official';
const key = 'nirwan-v7-realtime';

// Function to fetch the current total count (WITHOUT incrementing)
async function fetchCurrentCount() {
    if (!visitorElement) return;
    try {
        const response = await fetch(`https://api.counterapi.dev/v1/${namespace}/${key}/?t=${Date.now()}`);
        if (response.ok) {
            const data = await response.json();
            if (data && typeof data.count !== 'undefined') {
                visitorElement.innerText = data.count;
            }
        }
    } catch (e) {}
}

// Function to increment once on page load
async function incrementOnLoad() {
    if (!visitorElement) return;
    try {
        const response = await fetch(`https://api.counterapi.dev/v1/${namespace}/${key}/up?t=${Date.now()}`);
        if (response.ok) {
            const data = await response.json();
            if (data && typeof data.count !== 'undefined') {
                visitorElement.innerText = data.count;
            }
        }
    } catch (e) {
        fetchCurrentCount();
    }
}

// Main Execution
document.addEventListener('DOMContentLoaded', () => {
    // 1. Increment immediately when a new visitor (or refresh) hits the page
    incrementOnLoad();

    // 2. Poll the server every 1 second to keep the count "real-time" across all open devices
    // If someone visits on Mobile, the Desktop will update automatically in 1 second.
    setInterval(fetchCurrentCount, 1000);
});

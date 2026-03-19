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

// --- DEFINITIVE VISITOR COUNTER (v12 - STABLE & ACCURATE) ---
// This version resets to 0 and uses a two-step logic:
// 1. Increment ONLY ONCE when the page is loaded (up).
// 2. Poll current count every 15 seconds WITHOUT incrementing (sync).

const visitorElement = document.getElementById('visitor-count');
const namespace = 'nirwan-computer-official';
const key = 'v12-final-definitive';
const baseUrl = `https://api.counterapi.dev/v1/${namespace}/${key}`;

async function incrementAndShow() {
    if (!visitorElement) return;
    try {
        // Step 1: Increment (+1) only on load
        const response = await fetch(`${baseUrl}/up?t=${Date.now()}`);
        if (response.ok) {
            const data = await response.json();
            visitorElement.innerText = data.count;
        }
    } catch (e) {
        syncOnly(); // Fallback to just getting the count
    }
}

async function syncOnly() {
    if (!visitorElement) return;
    try {
        // Step 2: Get current total WITHOUT adding (+0)
        const response = await fetch(`${baseUrl}/?t=${Date.now()}`);
        if (response.ok) {
            const data = await response.json();
            visitorElement.innerText = data.count;
        }
    } catch (e) {}
}

document.addEventListener('DOMContentLoaded', () => {
    // Start fresh
    incrementAndShow();
    
    // Sync every 15 seconds to keep all devices updated without hitting rate limits
    setInterval(syncOnly, 15000);
});

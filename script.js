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

// --- ACCURATE UNIQUE VISITOR COUNTER (v4 - FINAL) ---
const visitorElement = document.getElementById('visitor-count');
const apiKey = 'company-profile-unique'; // New key for a fresh start
const namespace = 'nirwaneffendy';
const storageKey = 'hasVisited_' + apiKey;

// Function to fetch and display the count
const getCount = async () => {
  try {
    const response = await fetch(`https://api.counterapi.dev/v1/${namespace}/${apiKey}/`);
    if (!response.ok) throw new Error('Failed to fetch count');
    const data = await response.json();
    if (visitorElement) visitorElement.innerText = data.count;
  } catch (error) {
    console.warn('Visitor count is currently unavailable.');
    if (visitorElement) visitorElement.innerText = 'N/A';
  }
};

// Function to increment the count (only for new visitors)
const incrementCount = async () => {
  try {
    const response = await fetch(`https://api.counterapi.dev/v1/${namespace}/${apiKey}/up`);
    if (!response.ok) throw new Error('Failed to increment count');
    const data = await response.json();
    if (visitorElement) visitorElement.innerText = data.count;
    // Mark as visited
    localStorage.setItem(storageKey, 'true');
  } catch (error) {
    console.warn('Could not update visitor count.');
    getCount(); // Still try to get the latest count
  }
};

// Main logic execution
if (localStorage.getItem(storageKey)) {
  // It's a returning visitor, just get the count
  getCount();
} else {
  // It's a new visitor, increment the count
  incrementCount();
}

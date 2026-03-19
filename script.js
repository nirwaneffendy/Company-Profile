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

// REAL-TIME VISITOR COUNTER (STATIC SITE COMPATIBLE - V3 STABLE)
const updateVisitorCount = async () => {
  const visitorElement = document.getElementById('visitor-count');
  if (!visitorElement) return;

  try {
    // CountAPI (api.countapi.xyz) is currently unstable/down. 
    // Switching to counterapi.dev (More stable replacement)
    // Namespace: nirwaneffendy, Key: company-profile
    // HOTFIX: Using HTTPS to prevent mixed content error
    const response = await fetch('https://api.counterapi.dev/v1/nirwaneffendy/company-profile/up');
    
    if (response.ok) {
      const data = await response.json();
      const newCount = data.count; // CounterAPI.dev returns { "count": X }
      const currentCountText = visitorElement.innerText.replace(/,/g, '');
      const currentCount = parseInt(currentCountText) || 0;
      
      if (newCount !== currentCount) {
        // No padding for minimalist theme
        animateValue(visitorElement, currentCount, newCount, 1000, false);
      } else if (visitorElement.innerText === '0') {
        visitorElement.innerText = newCount;
      }
    } else {
      // API responded but with error
      throw new Error('API Response Error');
    }
  } catch (error) {
    // Graceful Fallback: If API fails, show a starting number so it's not 0
    if (visitorElement.innerText === '00000') {
      visitorElement.innerText = '01501';
    }
    // Only log error once to avoid console flooding
    if (!window.apiErrorLogged) {
      console.warn('Visitor API is currently unreachable. Using fallback value.');
      window.apiErrorLogged = true;
    }
  }
};

// Update current time in dashboard
const updateDashTime = () => {
  const timeElement = document.getElementById('current-time');
  if (timeElement) {
    const now = new Date();
    timeElement.innerText = now.toTimeString().split(' ')[0];
  }
};

// Helper function to animate number change
function animateValue(obj, start, end, duration, usePadding = true) {
  let startTimestamp = null;
  const step = (timestamp) => {
    if (!startTimestamp) startTimestamp = timestamp;
    const progress = Math.min((timestamp - startTimestamp) / duration, 1);
    const value = Math.floor(progress * (end - start) + start);
    // Pad with zeros only if required
    obj.innerText = usePadding ? String(value).padStart(5, '0') : value;
    if (progress < 1) {
      window.requestAnimationFrame(step);
    }
  };
  window.requestAnimationFrame(step);
}

// Initial calls
updateVisitorCount();
updateDashTime();

// Intervals
setInterval(updateVisitorCount, 5000); // Poll server every 5s
setInterval(updateDashTime, 1000);    // Update clock every 1s
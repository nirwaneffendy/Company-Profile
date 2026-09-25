// --- 1. TECHNICAL LOG TOAST ANIMATION ---
const logs = [
  "Inbound: Laptop_Motherboard_Diagnostics_Check",
  "Status: Component_Level_Microscope_OK",
  "Success: BIOS_Firmware_Reflash_Complete",
  "Optimized: CCTV_Surveillance_Network_Online",
  "Log: Printer_Head_Unclog_Calibration_Success",
  "Ready: Secure_Data_Recovery_Sector_Scan",
  "Status: SSD_NVMe_HighSpeed_Upgrade_Done"
];

function updateLog() {
  const popup = document.getElementById("popup");
  const span = document.getElementById("log-message");
  if (!popup || !span) return;

  span.textContent = logs[Math.floor(Math.random() * logs.length)];
  
  popup.style.display = "flex";
  popup.style.opacity = "0";
  popup.style.transform = "translateY(10px)";
  popup.style.transition = "all 0.3s cubic-bezier(0.16, 1, 0.3, 1)";

  setTimeout(() => {
    popup.style.opacity = "1";
    popup.style.transform = "translateY(0)";
  }, 50);

  setTimeout(() => {
    popup.style.opacity = "0";
    popup.style.transform = "translateY(10px)";
    setTimeout(() => {
      popup.style.display = "none";
    }, 300);
  }, 4000);
}

setTimeout(() => {
  updateLog();
  setInterval(updateLog, 16000);
}, 3000);

// --- 2. INTERACTIVE PROBLEM ESTIMATOR SELECTOR ---
const problemSelect = document.getElementById('problem-select');
const resStatus = document.getElementById('res-status');
const resTime = document.getElementById('res-time');
const waLink = document.getElementById('interactive-wa-link');

const problemDetails = {
  laptop: {
    text: "💡 Estimasi Solusi: Pengecekan komponen & motherboard presisi di Lab.",
    time: "⏱️ Estimasi Waktu: Bisa Ditunggu / 1-2 Hari Kerja.",
    wa: "Halo Nirwan Computer, saya mengalami masalah Laptop / PC Mati Total, Lemot, atau Layar Blank."
  },
  printer: {
    text: "💡 Estimasi Solusi: Maintenance head, reset counter, & kalibrasi mekanik.",
    time: "⏱️ Estimasi Waktu: 30 Menit - 1 Hari Kerja.",
    wa: "Halo Nirwan Computer, printer saya hasil cetaknya bergaris / macet / blinking."
  },
  cctv: {
    text: "💡 Estimasi Solusi: Pemasangan unit baru / troubleshooting jaringan & DVR.",
    time: "⏱️ Estimasi Waktu: Kunjungan Teknisi ke Lokasi Anda.",
    wa: "Halo Nirwan Computer, saya ingin konsultasi pemasangan atau service Kamera CCTV."
  },
  recovery: {
    text: "💡 Estimasi Solusi: Deep Sector Scanning & Reconstruct Partition Data.",
    time: "⏱️ Estimasi Waktu: 1 - 3 Hari Kerja (Tergantung kapasitas Storage).",
    wa: "Halo Nirwan Computer, saya butuh bantuan Penyelamatan / Recovery Data penting yang terhapus/rusak."
  },
  web: {
    text: "💡 Estimasi Solusi: Custom Website & App Mobile Responsive + Free SEO.",
    time: "⏱️ Estimasi Waktu: 3 - 7 Hari Kerja.",
    wa: "Halo Nirwan Computer, saya mau buat Website Perusahaan / Toko Online / Aplikasi Mobile."
  },
  custompc: {
    text: "💡 Estimasi Solusi: Konsultasi Spesifikasi, Cable Management & Stress Test.",
    time: "⏱️ Estimasi Waktu: 1 Hari Kerja (Unit Siap Pakai).",
    wa: "Halo Nirwan Computer, saya ingin konsultasi Rakit PC Gaming / Workstation Editing."
  }
};

if (problemSelect) {
  problemSelect.addEventListener('change', function() {
    const selected = this.value;
    const detail = problemDetails[selected];
    if (detail) {
      resStatus.innerHTML = `<strong>${detail.text}</strong>`;
      resTime.innerHTML = `<i class="far fa-clock"></i> ${detail.time}`;
      waLink.href = `https://wa.me/6287846964636?text=${encodeURIComponent(detail.wa)}`;
    }
  });
}

// --- 3. FAQ ACCORDION TOGGLE ---
document.querySelectorAll('.faq-question').forEach(button => {
  button.addEventListener('click', () => {
    const faqItem = button.parentElement;
    const isActive = faqItem.classList.contains('active');

    document.querySelectorAll('.faq-item').forEach(item => {
      item.classList.remove('active');
    });

    if (!isActive) {
      faqItem.classList.add('active');
    }
  });
});

// --- 4. STICKY HEADER & MOBILE MENU DRAWER ---
const header = document.getElementById('main-header');
const mobileToggle = document.getElementById('mobile-toggle');
const navMenu = document.getElementById('nav-menu');
const toggleIcon = document.getElementById('toggle-icon');

if (mobileToggle && navMenu) {
  mobileToggle.addEventListener('click', (e) => {
    e.stopPropagation();
    navMenu.classList.toggle('active');
    if (navMenu.classList.contains('active')) {
      toggleIcon.className = 'fas fa-xmark';
    } else {
      toggleIcon.className = 'fas fa-bars';
    }
  });

  document.querySelectorAll('.nav-link-item, .mobile-cta').forEach(link => {
    link.addEventListener('click', () => {
      navMenu.classList.remove('active');
      if (toggleIcon) toggleIcon.className = 'fas fa-bars';
    });
  });

  document.addEventListener('click', (e) => {
    if (!navMenu.contains(e.target) && !mobileToggle.contains(e.target)) {
      navMenu.classList.remove('active');
      if (toggleIcon) toggleIcon.className = 'fas fa-bars';
    }
  });
}

window.addEventListener('scroll', () => {
  if (window.scrollY > 40) {
    header.classList.add('scrolled');
  } else {
    header.classList.remove('scrolled');
  }
});

// --- 5. SCROLL REVEAL OBSERVER ---
const observerOptions = {
  threshold: 0.1,
  rootMargin: "0px 0px -50px 0px"
};

const revealObserver = new IntersectionObserver((entries) => {
  entries.forEach((entry, index) => {
    if (entry.isIntersecting) {
      setTimeout(() => {
        entry.target.style.opacity = "1";
        entry.target.style.transform = "translateY(0)";
      }, (index % 4) * 80);
      revealObserver.unobserve(entry.target);
    }
  });
}, observerOptions);

document.querySelectorAll('.service-card, .why-card, .review-card, .section-header, .hero-card-preview').forEach(el => {
  el.style.opacity = "0";
  el.style.transform = "translateY(20px)";
  el.style.transition = "all 0.5s cubic-bezier(0.16, 1, 0.3, 1)";
  revealObserver.observe(el);
});

// --- 6. HIDE ELFSIGHT BRANDING WATERMARK ---
const hideBranding = () => {
  const links = document.querySelectorAll('a[href*="elfsight.com"], [class*="eapps-link"]');
  links.forEach(link => {
    link.style.display = 'none';
    link.style.visibility = 'hidden';
    link.style.opacity = '0';
    link.style.height = '0';
  });
};

let brandingInterval = setInterval(hideBranding, 3000);
window.addEventListener('load', () => {
  hideBranding();
  setTimeout(() => clearInterval(brandingInterval), 15000);
});

// --- 7. REAL-TIME GLOBAL VISITOR COUNTER FOR GITHUB PAGES & LOCALHOST ---
const visitorElement = document.getElementById('visitor-count');
const visitorBadge = document.getElementById('visitor-badge');

async function syncVisitorCount() {
  // Layer 1: If local PHP environment is running (XAMPP/Apache)
  if (visitorElement) {
    try {
      const res = await fetch(`counter.php?t=${Date.now()}`);
      if (res.ok) {
        const text = await res.text();
        if (text && text.trim().startsWith('{')) {
          const data = JSON.parse(text);
          if (data && typeof data.count !== 'undefined') {
            const phpCount = Math.max(Number(data.count) || 0, 3115);
            visitorElement.innerText = phpCount.toLocaleString('id-ID');
            visitorElement.style.display = 'inline';
            if (visitorBadge) visitorBadge.style.display = 'none';
            return;
          }
        }
      }
    } catch (e) {
      // PHP not available (GitHub Pages static host)
    }
  }

  // Layer 2: Live global hit counter badge for GitHub Pages
  if (visitorBadge) {
    visitorBadge.style.display = 'inline';
    if (visitorElement) visitorElement.style.display = 'none';
  }
}

document.addEventListener('DOMContentLoaded', () => {
  syncVisitorCount();
});

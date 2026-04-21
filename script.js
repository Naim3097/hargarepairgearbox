// Mobile menu toggle
function toggleMobileMenu() {
    const navLinks = document.getElementById('navLinks');
    const menuToggle = document.querySelector('.mobile-menu-toggle');
    navLinks.classList.toggle('active');
    menuToggle.classList.toggle('active');
}

// Dropdown toggle for mobile
function toggleDropdown(event) {
    event.preventDefault();
    const dropdown = event.target.closest('.nav-dropdown');
    dropdown.classList.toggle('active');
}

// Close mobile menu when clicking outside
document.addEventListener('click', function(event) {
    const navbar = document.querySelector('.navbar');
    const navLinks = document.getElementById('navLinks');
    const menuToggle = document.querySelector('.mobile-menu-toggle');
    
    if (navLinks && !navbar.contains(event.target)) {
        navLinks.classList.remove('active');
        if (menuToggle) {
            menuToggle.classList.remove('active');
        }
    }
});

// Smooth scroll to form
function scrollToForm() {
    const form = document.getElementById('quotation-form');
    form.scrollIntoView({ behavior: 'smooth', block: 'start' });
    
    // Track form view event
    if (typeof fbq !== 'undefined') {
        fbq('track', 'ViewContent', {
            content_name: 'Quotation Form',
            content_category: 'Gearbox Repair'
        });
    }
    
    if (typeof dataLayer !== 'undefined') {
        dataLayer.push({
            'event': 'form_view',
            'form_name': 'gearbox_quotation'
        });
    }
}

// Handle form submission
function handleFormSubmit(event) {
    event.preventDefault();
    
    const formData = {
        carBrand: document.getElementById('carBrand').value,
        symptoms: document.getElementById('symptoms').value,
        location: document.getElementById('location').value
    };
    
    // Track conversion event - Meta Pixel
    if (typeof fbq !== 'undefined') {
        fbq('track', 'Lead', {
            content_name: 'Gearbox Quotation Request',
            content_category: 'Lead Form',
            value: 0.00,
            currency: 'MYR'
        });
    }
    
    // Track conversion event - Google Tag Manager
    if (typeof dataLayer !== 'undefined') {
        dataLayer.push({
            'event': 'generate_lead',
            'form_name': 'gearbox_quotation',
            'car_brand': formData.carBrand
        });
    }
    
    // Create WhatsApp message
    const whatsappMessage = `Salam, saya nak semak harga repair gearbox:\n\n` +
        `🚗 Kereta: ${formData.carBrand}\n` +
        `❌ Masalah: ${formData.symptoms}\n` +
        `📍 Lokasi: ${formData.location || 'Tidak dinyatakan'}\n\n` +
        `Boleh bagi anggaran harga & punca masalah?`;
    
    const encodedMessage = encodeURIComponent(whatsappMessage);
    const whatsappURL = `https://wa.me/601131051677?text=${encodedMessage}`;
    
    // Show success message
    document.getElementById('gearboxForm').style.display = 'none';
    document.getElementById('successMessage').style.display = 'block';
    
    // Send data to your backend/CRM (optional)
    // You can add your own API endpoint here
    // fetch('/api/quotation', {
    //     method: 'POST',
    //     headers: { 'Content-Type': 'application/json' },
    //     body: JSON.stringify(formData)
    // });
    
    // Open WhatsApp after 2 seconds
    setTimeout(() => {
        window.open(whatsappURL, '_blank');
        
        // Track WhatsApp open (higher value conversion)
        if (typeof fbq !== 'undefined') {
            fbq('track', 'Contact', {
                content_name: 'WhatsApp Opened from Form',
                content_category: 'Form Success',
                car_brand: formData.carBrand
            });
        }
        
        if (typeof dataLayer !== 'undefined') {
            dataLayer.push({
                'event': 'whatsapp_open_success',
                'form_name': 'gearbox_quotation',
                'car_brand': formData.carBrand
            });
        }
    }, 2000);
    
    return false;
}

// Handle brand form submission
function handleBrandFormSubmit(event) {
    event.preventDefault();
    
    const formData = {
        carModel: document.getElementById('brandCarModel').value,
        problem: document.getElementById('brandProblem').value,
        location: document.getElementById('brandLocation').value
    };
    
    // Track conversion event
    if (typeof fbq !== 'undefined') {
        fbq('track', 'Lead', {
            content_name: 'Brand Page Quotation',
            content_category: 'Lead Form'
        });
    }
    
    // Create WhatsApp message
    const whatsappMessage = `Salam, saya nak semak harga repair gearbox:\n\n` +
        `🚗 Kereta: ${formData.carModel}\n` +
        `❌ Masalah: ${formData.problem}\n` +
        `📍 Lokasi: ${formData.location || 'Tidak dinyatakan'}\n\n` +
        `Boleh bagi anggaran harga & punca masalah?`;
    
    const encodedMessage = encodeURIComponent(whatsappMessage);
    const whatsappURL = `https://wa.me/601131051677?text=${encodedMessage}`;
    
    // Show success message
    document.getElementById('brandForm').style.display = 'none';
    document.getElementById('successMessage').style.display = 'block';
    
    // Open WhatsApp after 2 seconds
    setTimeout(() => {
        window.open(whatsappURL, '_blank');
    }, 2000);
    
    return false;
}

// Handle blog form submission
function handleBlogFormSubmit(event) {
    event.preventDefault();
    
    const formData = {
        carModel: document.getElementById('blogCarModel').value,
        problem: document.getElementById('blogProblem').value,
        location: document.getElementById('blogLocation').value
    };
    
    // Track conversion event
    if (typeof fbq !== 'undefined') {
        fbq('track', 'Lead', {
            content_name: 'Blog Page Quotation',
            content_category: 'Lead Form'
        });
    }
    
    // Create WhatsApp message
    const whatsappMessage = `Salam, saya nak semak harga repair gearbox:\n\n` +
        `🚗 Kereta: ${formData.carModel}\n` +
        `❌ Masalah: ${formData.problem}\n` +
        `📍 Lokasi: ${formData.location || 'Tidak dinyatakan'}\n\n` +
        `Boleh bagi anggaran harga & punca masalah?`;
    
    const encodedMessage = encodeURIComponent(whatsappMessage);
    const whatsappURL = `https://wa.me/601131051677?text=${encodedMessage}`;
    
    // Show success message
    document.getElementById('blogForm').style.display = 'none';
    document.getElementById('blogSuccessMessage').style.display = 'block';
    
    // Open WhatsApp after 2 seconds
    setTimeout(() => {
        window.open(whatsappURL, '_blank');
    }, 2000);
    
    return false;
}

// ── Promo Modal ────────────────────────────────────────────────────────────
(function () {
    // Load Satoshi font (used by the modal)
    if (!document.querySelector('link[href*="fontshare"]')) {
        var fontLink = document.createElement('link');
        fontLink.rel = 'stylesheet';
        fontLink.href = 'https://api.fontshare.com/v2/css?f[]=satoshi@400,500,700&display=swap';
        document.head.appendChild(fontLink);
    }

    // Inject modal markup
    var wrapper = document.createElement('div');
    wrapper.innerHTML = '<div class="onex-modal-backdrop" id="onexPromoModal">'
        + '<div class="onex-modal" role="dialog" aria-modal="true" aria-labelledby="onex-modal-heading">'
        + '<button class="onex-modal-close" id="onexModalClose" aria-label="Tutup">&times;</button>'
        + '<div class="onex-modal-grid">'
        + '<div class="onex-modal-hero">'
        + '<img src="/promo.png" alt="Pakej Servis ATF Gearbox RM439 — One X Transmission" loading="eager">'
        + '</div>'
        + '<div class="onex-modal-content">'
        + '<span class="onex-modal-overline">Pakej Promosi</span>'
        + '<div class="onex-modal-divider"></div>'
        + '<div class="onex-modal-pricing">'
        + '<span class="onex-modal-price">RM 439</span>'
        + '<span class="onex-modal-original">RM 580</span>'
        + '</div>'
        + '<h2 class="onex-modal-title" id="onex-modal-heading">Pakej Servis ATF Gearbox</h2>'
        + '<div class="onex-modal-items">'
        + '<div class="onex-modal-item"><span class="onex-modal-item-label">Minyak ATF Duckhams Dexron VI</span></div>'
        + '<div class="onex-modal-item"><span class="onex-modal-item-label">Penapis Gearbox Baru</span></div>'
        + '<div class="onex-modal-item"><span class="onex-modal-item-label">OBD2 Diagnostic Device</span><span class="onex-modal-item-tag">Percuma</span></div>'
        + '</div>'
        + '<a href="https://www.onextransmission.com/ms/packages" class="onex-modal-cta" id="onexModalCta" target="_blank" rel="noopener">Lihat Pakej Penuh</a>'
        + '<div class="onex-modal-footer">'
        + '<div class="onex-modal-footer-item"><span class="onex-modal-footer-label">Deposit</span><span class="onex-modal-footer-value">RM 50</span></div>'
        + '<div class="onex-modal-footer-item"><span class="onex-modal-footer-label">Jimat</span><span class="onex-modal-footer-value">RM 141</span></div>'
        + '<div class="onex-modal-footer-item"><span class="onex-modal-footer-label">Terhad</span><span class="onex-modal-footer-value onex-modal-footer-value--red">100 unit sahaja</span></div>'
        + '</div>'
        + '</div>'
        + '</div>'
        + '</div>'
        + '</div>';
    document.body.appendChild(wrapper.firstElementChild);

    var STORAGE_KEY = 'onex_promo_dismissed';
    var SHOW_DELAY  = 3000;
    var COOLDOWN    = 3; // days

    var backdrop = document.getElementById('onexPromoModal');
    var closeBtn = document.getElementById('onexModalClose');
    var ctaBtn   = document.getElementById('onexModalCta');

    if (!backdrop || !closeBtn) return;

    function isDismissed() {
        try {
            var raw = localStorage.getItem(STORAGE_KEY);
            if (!raw) return false;
            var ts = parseInt(raw, 10);
            if (isNaN(ts)) return false;
            return (Date.now() - ts) / (1000 * 60 * 60 * 24) < COOLDOWN;
        } catch (e) { return false; }
    }

    function dismiss() {
        try { localStorage.setItem(STORAGE_KEY, String(Date.now())); } catch (e) {}
        backdrop.classList.remove('active');
        document.body.style.overflow = '';
    }

    function openModal() {
        backdrop.classList.add('active');
        document.body.style.overflow = 'hidden';
        closeBtn.focus();
    }

    closeBtn.addEventListener('click', dismiss);
    backdrop.addEventListener('click', function (e) {
        if (e.target === backdrop) dismiss();
    });
    document.addEventListener('keydown', function (e) {
        if (e.key === 'Escape' && backdrop.classList.contains('active')) dismiss();
    });

    if (ctaBtn) {
        ctaBtn.addEventListener('click', function () {
            if (typeof fbq !== 'undefined') fbq('track', 'InitiateCheckout', { content_name: 'Promo Modal CTA', value: 439, currency: 'MYR' });
            if (typeof dataLayer !== 'undefined') dataLayer.push({ event: 'promo_modal_cta_click' });
            dismiss();
        });
    }

    if (!isDismissed()) setTimeout(openModal, SHOW_DELAY);
})();

// Track WhatsApp click
function trackWhatsAppClick() {
    if (typeof fbq !== 'undefined') {
        fbq('track', 'Contact', {
            content_name: 'WhatsApp Click',
            content_category: 'Direct Contact'
        });
    }
    
    if (typeof dataLayer !== 'undefined') {
        dataLayer.push({
            'event': 'whatsapp_click',
            'click_location': 'floating_button'
        });
    }
}

// Sticky CTA visibility on scroll
window.addEventListener('scroll', function() {
    const stickyCTA = document.querySelector('.sticky-cta');
    const formSection = document.getElementById('quotation-form');
    const formPosition = formSection.getBoundingClientRect();
    
    // Show sticky CTA when form is not visible
    if (formPosition.top > window.innerHeight || formPosition.bottom < 0) {
        stickyCTA.classList.add('visible');
    } else {
        stickyCTA.classList.remove('visible');
    }
});

// Track page engagement for retargeting
let timeOnPage = 0;
setInterval(() => {
    timeOnPage += 5;
    
    // Track users who spend 30+ seconds (high intent)
    if (timeOnPage === 30 && typeof fbq !== 'undefined') {
        fbq('trackCustom', 'HighEngagement', {
            time_on_page: 30
        });
    }
    
    // Track users who spend 60+ seconds (very high intent)
    if (timeOnPage === 60 && typeof fbq !== 'undefined') {
        fbq('trackCustom', 'VeryHighEngagement', {
            time_on_page: 60
        });
    }
}, 5000);

// Track form field interactions for retargeting
document.addEventListener('DOMContentLoaded', function() {
    const formInputs = document.querySelectorAll('#gearboxForm input, #gearboxForm select, #gearboxForm textarea');
    let formStarted = false;
    
    formInputs.forEach(input => {
        input.addEventListener('focus', function() {
            if (!formStarted) {
                formStarted = true;
                
                // Track form start
                if (typeof fbq !== 'undefined') {
                    fbq('trackCustom', 'FormStarted', {
                        form_name: 'gearbox_quotation'
                    });
                }
                
                if (typeof dataLayer !== 'undefined') {
                    dataLayer.push({
                        'event': 'form_started',
                        'form_name': 'gearbox_quotation'
                    });
                }
            }
        });
    });
});

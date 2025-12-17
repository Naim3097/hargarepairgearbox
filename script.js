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

// Perodua Brand Page Script
const BRAND_NAME = "Perodua";
const WHATSAPP_NUMBER = "60102020723";

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

// FAQ Toggle
function toggleFaq(element) {
    const faqItem = element.parentElement;
    const isActive = faqItem.classList.contains('active');
    
    // Close all FAQs
    document.querySelectorAll('.faq-item').forEach(item => {
        item.classList.remove('active');
    });
    
    // Open clicked FAQ if it wasn't active
    if (!isActive) {
        faqItem.classList.add('active');
    }
}

// Handle Brand Form Submit
function handleBrandFormSubmit(event) {
    event.preventDefault();
    
    const formData = {
        carModel: document.getElementById('brandCarModel').value,
        problem: document.getElementById('brandProblem').value,
        location: document.getElementById('brandLocation').value
    };
    
    // Track conversion - Meta Pixel
    if (typeof fbq !== 'undefined') {
        fbq('track', 'Lead', {
            content_name: `${BRAND_NAME} Quotation Request`,
            content_category: 'Gearbox Repair',
            value: 0.00,
            currency: 'MYR'
        });
    }
    
    // Track conversion - Google Tag Manager
    if (typeof dataLayer !== 'undefined') {
        dataLayer.push({
            'event': 'generate_lead',
            'form_name': `${BRAND_NAME.toLowerCase()}_quotation`,
            'car_model': formData.carModel
        });
    }
    
    // Create WhatsApp message
    const whatsappMessage = `Salam, saya nak semak harga repair gearbox ${BRAND_NAME}:\n\n` +
        `🚗 Model: ${formData.carModel}\n` +
        `❌ Masalah: ${formData.problem}\n` +
        `📍 Lokasi: ${formData.location || 'Tidak dinyatakan'}\n\n` +
        `Boleh bagi anggaran harga & penjelasan?`;
    
    const encodedMessage = encodeURIComponent(whatsappMessage);
    const whatsappURL = `https://wa.me/${WHATSAPP_NUMBER}?text=${encodedMessage}`;
    
    // Show success message
    document.getElementById('brandForm').style.display = 'none';
    document.getElementById('successMessage').style.display = 'block';
    
    // Open WhatsApp after 2 seconds
    setTimeout(() => {
        window.open(whatsappURL, '_blank');
        
        // Track WhatsApp open
        if (typeof fbq !== 'undefined') {
            fbq('track', 'Contact', {
                content_name: `${BRAND_NAME} WhatsApp Opened from Form`,
                car_model: formData.carModel
            });
        }
        
        if (typeof dataLayer !== 'undefined') {
            dataLayer.push({
                'event': 'whatsapp_open_success',
                'form_name': `${BRAND_NAME.toLowerCase()}_quotation`,
                'car_model': formData.carModel
            });
        }
    }, 2000);
    
    return false;
}

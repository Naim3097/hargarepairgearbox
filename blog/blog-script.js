// Blog Script - Modular JavaScript for Blog Page
// Handles dynamic loading, filtering, and search functionality

let allPosts = [];
let currentFilter = 'all';

// Initialize blog on page load
document.addEventListener('DOMContentLoaded', function() {
    loadBlogData();
    setupEventListeners();
});

// Load blog data from JSON
async function loadBlogData() {
    try {
        const response = await fetch('blog/blog-data.json');
        const data = await response.json();
        allPosts = data.posts;
        
        renderFeaturedPosts();
        renderAllPosts();
        
        // Track blog page view
        if (typeof fbq !== 'undefined') {
            fbq('trackCustom', 'BlogPageView');
        }
    } catch (error) {
        console.error('Error loading blog data:', error);
        document.getElementById('blogGrid').innerHTML = '<p class="error-message">Maaf, artikel tidak dapat dipaparkan. Sila refresh page.</p>';
    }
}

// Setup event listeners
function setupEventListeners() {
    // Filter buttons
    const filterButtons = document.querySelectorAll('.filter-btn');
    filterButtons.forEach(button => {
        button.addEventListener('click', function() {
            // Remove active class from all buttons
            filterButtons.forEach(btn => {
                btn.classList.remove('active');
                btn.setAttribute('aria-selected', 'false');
            });
            // Add active class to clicked button
            this.classList.add('active');
            this.setAttribute('aria-selected', 'true');
            
            // Get category and filter
            currentFilter = this.getAttribute('data-category');
            filterPosts(currentFilter);
            
            // Track filter usage
            if (typeof fbq !== 'undefined') {
                fbq('trackCustom', 'BlogFilter', {category: currentFilter});
            }
        });
    });
}

// Render featured posts (using same card style as normal posts)
function renderFeaturedPosts() {
    const featuredContainer = document.getElementById('featuredPosts');
    const featuredPosts = allPosts.filter(post => post.featured);
    
    if (featuredPosts.length === 0) {
        featuredContainer.parentElement.style.display = 'none';
        return;
    }
    
    featuredContainer.innerHTML = featuredPosts.map(post => createBlogCard(post)).join('');
}

// Render all posts
function renderAllPosts(posts = allPosts) {
    const blogGrid = document.getElementById('blogGrid');
    const noResults = document.getElementById('noResults');
    
    if (posts.length === 0) {
        blogGrid.innerHTML = '';
        noResults.style.display = 'block';
        return;
    }
    
    noResults.style.display = 'none';
    blogGrid.innerHTML = posts.map(post => createBlogCard(post)).join('');
}

// Create standard blog card
function createBlogCard(post) {
    const date = new Date(post.date);
    const formattedDate = date.toLocaleDateString('ms-MY', { year: 'numeric', month: 'long', day: 'numeric' });
    
    return `
        <article class="blog-card" onclick="trackBlogClick('${post.slug}', '${post.title}')">
            <a href="blog/posts/${post.slug}.html" class="blog-card-link">
                <div class="blog-card-image">
                    <img src="${post.image}" alt="${post.title}" loading="lazy">
                </div>
                <div class="blog-card-content">
                    <div class="post-meta">
                        <span class="post-category">${post.category}</span>
                        <span class="post-divider">•</span>
                        <span class="post-read-time">${post.readTime}</span>
                    </div>
                    <h3>${post.title}</h3>
                    <p>${post.excerpt}</p>
                    <div class="blog-card-footer">
                        <span class="post-date">${formattedDate}</span>
                        <span class="read-more">
                            Baca →
                        </span>
                    </div>
                </div>
            </a>
        </article>
    `;
}

// Filter posts by category
function filterPosts(category) {
    if (category === 'all') {
        renderAllPosts(allPosts);
    } else {
        const filtered = allPosts.filter(post => post.category.toLowerCase() === category);
        renderAllPosts(filtered);
    }
}

// Search blog posts
function searchBlog() {
    const searchTerm = document.getElementById('blogSearch').value.toLowerCase();
    
    if (searchTerm === '') {
        // If search is empty, show filtered results
        filterPosts(currentFilter);
        return;
    }
    
    const searchResults = allPosts.filter(post => {
        return post.title.toLowerCase().includes(searchTerm) ||
               post.excerpt.toLowerCase().includes(searchTerm) ||
               post.tags.some(tag => tag.toLowerCase().includes(searchTerm)) ||
               post.category.toLowerCase().includes(searchTerm);
    });
    
    renderAllPosts(searchResults);
    
    // Track search
    if (typeof fbq !== 'undefined') {
        fbq('trackCustom', 'BlogSearch', {searchTerm: searchTerm, results: searchResults.length});
    }
}

// Track blog post clicks
function trackBlogClick(slug, title) {
    if (typeof fbq !== 'undefined') {
        fbq('trackCustom', 'BlogPostClick', {
            slug: slug,
            title: title
        });
    }
    
    if (typeof dataLayer !== 'undefined') {
        dataLayer.push({
            'event': 'blog_post_click',
            'post_slug': slug,
            'post_title': title
        });
    }
}

// Export functions for external use
window.searchBlog = searchBlog;
window.trackBlogClick = trackBlogClick;

// main.js
document.addEventListener('DOMContentLoaded', () => {
    // Navigation active state highlight
    const navLinks = document.querySelectorAll('nav a');
    navLinks.forEach(link => {
        link.addEventListener('click', (e) => {
            navLinks.forEach(l => l.classList.remove('active'));
            link.classList.add('active');
        });
    });
    // Theme Toggle Simulation
    const themeToggleBtn = document.querySelector('.theme-toggle');
    if (themeToggleBtn) {
        themeToggleBtn.addEventListener('click', () => {
            // Toggle body class
            document.body.classList.toggle('light-theme');
            
            // Premium microinteraction: rotate icon
            const svg = themeToggleBtn.querySelector('svg');
            svg.style.transform = svg.style.transform === 'rotate(180deg)' ? 'rotate(0deg)' : 'rotate(180deg)';
            svg.style.transition = 'transform 0.5s ease';
            
            // Optional feedback
            console.log('Modo de color alternado');
        });
    }
    // Floating badges premium hover effects
    const badges = document.querySelectorAll('.floating-badge');
    badges.forEach(badge => {
        badge.addEventListener('mouseenter', () => {
            badge.style.transform = 'scale(1.2) translateY(-8px)';
        });
        badge.addEventListener('mouseleave', () => {
            badge.style.transform = '';
        });
    });
    // Subtle parallax mousemove effect on profile glow ring
    const profileContainer = document.querySelector('.profile-container');
    if (profileContainer) {
        const glowRing = document.querySelector('.profile-glow-ring');
        profileContainer.addEventListener('mousemove', (e) => {
            const rect = profileContainer.getBoundingClientRect();
            const x = e.clientX - rect.left - rect.width / 2;
            const y = e.clientY - rect.top - rect.height / 2;
            
            // Sutil traslación basada en la posición del cursor
            glowRing.style.transform = `rotate(${Date.now() / 100 % 360}deg) translate(${x * 0.08}px, ${y * 0.08}px)`;
        });
        
        profileContainer.addEventListener('mouseleave', () => {
            glowRing.style.transform = '';
        });
    }
});

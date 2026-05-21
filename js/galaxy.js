class GalaxyAnimation {
    constructor() {
        this.canvas = document.createElement('canvas');
        this.ctx = this.canvas.getContext('2d');
        this.stars = [];
        this.numStars = 300; // Drastically reduced for performance
        this.baseSpeed = 0.05;
        this.setupCanvas();
        this.initStars();
        this.animate();

        window.addEventListener('resize', () => {
            this.setupCanvas();
            this.initStars();
        });
    }

    setupCanvas() {
        this.canvas.width = window.innerWidth;
        this.canvas.height = window.innerHeight;
        this.canvas.style.position = 'fixed';
        this.canvas.style.top = '0';
        this.canvas.style.left = '0';
        this.canvas.style.width = '100vw';
        this.canvas.style.height = '100vh';
        this.canvas.style.zIndex = '-2';
        this.canvas.style.pointerEvents = 'none';
        // Base dark space color handled by CSS
        this.canvas.style.background = 'transparent';

        if (!document.body.contains(this.canvas)) {
            document.body.insertBefore(this.canvas, document.body.firstChild);
        }
    }

    initStars() {
        this.stars = [];
        for (let i = 0; i < this.numStars; i++) {
            this.stars.push({
                x: Math.random() * this.canvas.width,
                y: Math.random() * this.canvas.height,
                z: Math.random() * this.canvas.width,
                size: Math.random() * 2 + 0.1,
                color: this.getRandomStarColor(),
                speed: (Math.random() * 0.5 + 0.1) * this.baseSpeed
            });
        }
    }

    getRandomStarColor() {
        const colors = [
            '#ffffff', '#ffffff', '#ffffff', // Mostly white
            '#87ceeb', // Light Blue
            '#ffd700', // Gold
            '#ff69b4'  // Pink
        ];
        return colors[Math.floor(Math.random() * colors.length)];
    }

    animate() {
        // Clear canvas
        this.ctx.clearRect(0, 0, this.canvas.width, this.canvas.height);

        // Draw and update stars
        const cx = this.canvas.width / 2;
        const cy = this.canvas.height / 2;

        this.ctx.beginPath(); // Batch drawing for stars

        for (let star of this.stars) {
            star.z -= star.speed * 20;

            if (star.z <= 0) {
                star.x = Math.random() * this.canvas.width;
                star.y = Math.random() * this.canvas.height;
                star.z = this.canvas.width;
            }

            const ratio = this.canvas.width / star.z;
            const px = (star.x - cx) * ratio + cx;
            const py = (star.y - cy) * ratio + cy;
            const pSize = star.size * ratio * 0.5;

            if (px > 0 && px < this.canvas.width && py > 0 && py < this.canvas.height && pSize > 0) {
                this.ctx.moveTo(px, py);
                this.ctx.arc(px, py, pSize, 0, Math.PI * 2);
                this.ctx.fillStyle = star.color; // Simplified drawing
            }
        }
        this.ctx.fill(); // Fill all at once

        requestAnimationFrame(() => this.animate());
    }
}

class CursorTrail {
    constructor() {
        this.canvas = document.createElement('canvas');
        this.ctx = this.canvas.getContext('2d');
        this.particles = [];
        this.mouse = { x: window.innerWidth / 2, y: window.innerHeight / 2 };

        // Expanded, vibrant cosmic color palette
        this.colors = [
            '#00ffff', // Cyan
            '#00bfff', // Deep Sky Blue
            '#8a2be2', // Blue Violet
            '#ff00ff', // Magenta
            '#ff1493', // Deep Pink
            '#ffb6c1', // Light Pink
            '#ffd700'  // Gold/Yellow
        ];

        this.setupCanvas();
        this.bindEvents();
        this.animate();
    }

    setupCanvas() {
        this.canvas.width = window.innerWidth;
        this.canvas.height = window.innerHeight;
        this.canvas.style.position = 'fixed';
        this.canvas.style.top = '0';
        this.canvas.style.left = '0';
        this.canvas.style.pointerEvents = 'none'; // Don't block clicks
        this.canvas.style.zIndex = '9999'; // Keep on top of everything

        if (!document.body.contains(this.canvas)) {
            document.body.appendChild(this.canvas);
        }

        window.addEventListener('resize', () => {
            this.canvas.width = window.innerWidth;
            this.canvas.height = window.innerHeight;
        });
    }

    bindEvents() {
        window.addEventListener('mousemove', (e) => {
            this.mouse.x = e.clientX;
            this.mouse.y = e.clientY;
            // Add fewer particles per move to optimize performace
            this.addParticle();
        });

        window.addEventListener('touchmove', (e) => {
            if (e.touches.length > 0) {
                this.mouse.x = e.touches[0].clientX;
                this.mouse.y = e.touches[0].clientY;
                this.addParticle();
            }
        });
    }

    addParticle() {
        const color = this.colors[Math.floor(Math.random() * this.colors.length)];

        // Randomize spread slightly around the cursor
        const offsetX = (Math.random() - 0.5) * 4;
        const offsetY = (Math.random() - 0.5) * 4;

        this.particles.push({
            x: this.mouse.x + offsetX,
            y: this.mouse.y + offsetY,
            // Smaller initial size for delicate spots (0.5 to 2.5px)
            size: Math.random() * 2 + 0.5,
            // Slower spread for a more coherent tail
            speedX: (Math.random() - 0.5) * 0.8,
            speedY: (Math.random() - 0.5) * 0.8,
            color: color,
            life: 1 // Fades from 1 to 0
        });
    }

    animate() {
        this.ctx.clearRect(0, 0, this.canvas.width, this.canvas.height);

        // We use composite operation for a brighter, glowing overlap effect
        this.ctx.globalCompositeOperation = 'screen';

        for (let i = 0; i < this.particles.length; i++) {
            let p = this.particles[i];

            p.x += p.speedX;
            p.y += p.speedY;

            // Slower fade out for a longer tail (was 0.03, now 0.015)
            p.life -= 0.015;
            // Slower shrink (was 0.95, now 0.98)
            p.size *= 0.98;

            // Remove dead particles
            if (p.life <= 0 || p.size <= 0.2) {
                this.particles.splice(i, 1);
                i--;
                continue;
            }

            this.ctx.beginPath();
            this.ctx.arc(p.x, p.y, p.size, 0, Math.PI * 2);
            this.ctx.fillStyle = p.color;

            // Apply a smooth fade out
            this.ctx.globalAlpha = Math.max(0, p.life);

            // Removed shadowBlur for performance

            this.ctx.fill();
        }

        // Reset composite operation
        this.ctx.globalCompositeOperation = 'source-over';
        this.ctx.globalAlpha = 1;

        requestAnimationFrame(() => this.animate());
    }
}

// Initialize animations when DOM is loaded
document.addEventListener('DOMContentLoaded', () => {
    new GalaxyAnimation();
    new CursorTrail();
});

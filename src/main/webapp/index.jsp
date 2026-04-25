<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>NexusShop | Modern E‑Commerce</title>
    <!-- Google Fonts + Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', sans-serif;
            background: #0A0C10;
            color: #EDEEF2;
            scroll-behavior: smooth;
        }

        /* modern dark/glass variables */
        :root {
            --bg-dark: #0A0C10;
            --card-bg: rgba(18, 22, 28, 0.96);
            --surface: #13161C;
            --border-glow: rgba(0, 212, 255, 0.2);
            --accent: #00D4FF;
            --accent-glow: #00d4ff55;
            --accent-secondary: #6C63FF;
            --text-muted: #A0A7B5;
            --success: #2DD4BF;
            --radius-xl: 24px;
            --radius-md: 18px;
            --shadow-sm: 0 15px 35px rgba(0, 0, 0, 0.3);
            --transition: all 0.25s ease;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 24px;
        }

        /* custom scrollbar */
        ::-webkit-scrollbar {
            width: 5px;
        }
        ::-webkit-scrollbar-track {
            background: #1A1E24;
        }
        ::-webkit-scrollbar-thumb {
            background: var(--accent);
            border-radius: 12px;
        }

        /* header glassmorphic */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            backdrop-filter: blur(20px);
            background: rgba(10, 12, 16, 0.75);
            border-bottom: 1px solid rgba(0, 212, 255, 0.12);
        }
        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            padding: 14px 0;
            flex-wrap: wrap;
        }
        .brand {
            font-size: 1.8rem;
            font-weight: 800;
            background: linear-gradient(135deg, #FFFFFF 30%, #00D4FF 80%);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
            letter-spacing: -0.02em;
        }
        .brand span {
            background: none;
            color: #00D4FF;
            background-clip: unset;
            -webkit-background-clip: unset;
        }
        .main-nav ul {
            display: flex;
            gap: 8px;
            list-style: none;
        }
        .main-nav li a {
            padding: 8px 16px;
            border-radius: 40px;
            font-weight: 500;
            transition: var(--transition);
            display: flex;
            align-items: center;
            gap: 8px;
            color: #eef2ff;
        }
        .main-nav li a:hover {
            background: rgba(0, 212, 255, 0.1);
            color: var(--accent);
        }
        .search {
            display: flex;
            align-items: center;
            background: #1A1E26;
            border-radius: 60px;
            padding: 8px 18px;
            gap: 10px;
            border: 1px solid #2A2F3A;
            transition: all 0.2s;
        }
        .search:focus-within {
            border-color: var(--accent);
            box-shadow: 0 0 8px var(--accent-glow);
        }
        .search input {
            background: transparent;
            border: none;
            outline: none;
            color: white;
            width: 200px;
            font-size: 0.9rem;
        }
        .icon-btn {
            background: transparent;
            border: none;
            color: #D1D9FF;
            font-size: 1.2rem;
            cursor: pointer;
            transition: 0.2s;
        }
        .icon-btn:hover {
            color: var(--accent);
        }
        .cart {
            position: relative;
            background: #1A1E26;
            padding: 8px 12px;
            border-radius: 50px;
            display: flex;
            align-items: center;
            gap: 8px;
        }
        .cart-count {
            background: var(--accent);
            color: #0A0C10;
            font-weight: 800;
            border-radius: 30px;
            padding: 0px 8px;
            font-size: 0.75rem;
            min-width: 22px;
            text-align: center;
        }
        .mobile-toggle {
            display: none;
            background: none;
            border: none;
            font-size: 1.6rem;
            color: white;
            cursor: pointer;
        }
        /* hero modern */
        .hero {
            background: radial-gradient(circle at 80% 20%, #12161E, #050608);
            padding: 70px 0;
            border-bottom: 1px solid rgba(0,212,255,0.2);
            position: relative;
            overflow: hidden;
        }
        .hero::before {
            content: '';
            position: absolute;
            width: 300px;
            height: 300px;
            background: #00d4ff20;
            filter: blur(120px);
            top: -100px;
            right: 0;
        }
        .hero-content h1 {
            font-size: 3.4rem;
            font-weight: 800;
            line-height: 1.2;
            background: linear-gradient(to right, #fff, #b0f0ff);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }
        .hero-content p {
            font-size: 1.1rem;
            color: var(--text-muted);
            max-width: 600px;
            margin: 20px 0 28px;
        }
        .btn-group {
            display: flex;
            gap: 16px;
            flex-wrap: wrap;
        }
        .btn {
            padding: 12px 28px;
            border-radius: 40px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.2s;
            border: none;
            font-size: 0.9rem;
        }
        .btn-primary {
            background: var(--accent);
            color: #0A0C10;
            box-shadow: 0 4px 12px rgba(0,212,255,0.3);
        }
        .btn-primary:hover {
            transform: translateY(-2px);
            background: #44e5ff;
            box-shadow: 0 8px 20px rgba(0,212,255,0.4);
        }
        .btn-outline {
            background: transparent;
            border: 1.5px solid rgba(0,212,255,0.5);
            color: white;
        }
        .btn-outline:hover {
            border-color: var(--accent);
            background: rgba(0,212,255,0.05);
        }

        /* section titles */
        .section-header {
            text-align: center;
            margin-bottom: 40px;
        }
        .section-header h2 {
            font-size: 2rem;
            font-weight: 700;
        }
        .section-header p {
            color: var(--text-muted);
            margin-top: 8px;
        }

        /* category cards */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(160px, 1fr));
            gap: 24px;
        }
        .cat-card {
            background: var(--surface);
            backdrop-filter: blur(4px);
            border-radius: var(--radius-md);
            padding: 24px 12px;
            text-align: center;
            cursor: pointer;
            transition: all 0.2s;
            border: 1px solid #232832;
        }
        .cat-card:hover {
            transform: translateY(-8px);
            border-color: var(--accent);
            background: #181E26;
            box-shadow: 0 20px 30px -12px rgba(0,0,0,0.5);
        }
        .cat-card i {
            font-size: 2.5rem;
            color: var(--accent);
            margin-bottom: 12px;
        }
        .cat-card h4 {
            font-size: 1.1rem;
        }

        /* product grid premium */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(270px, 1fr));
            gap: 28px;
        }
        .product-card {
            background: #11151C;
            border-radius: 24px;
            overflow: hidden;
            transition: all 0.3s cubic-bezier(0.2, 0.9, 0.4, 1.1);
            border: 1px solid #20242C;
            position: relative;
        }
        .product-card:hover {
            transform: translateY(-8px);
            border-color: var(--accent);
            box-shadow: 0 20px 35px -15px rgba(0,212,255,0.2);
        }
        .product-img {
            height: 220px;
            width: 100%;
            object-fit: cover;
            transition: 0.3s;
        }
        .product-badge {
            position: absolute;
            top: 14px;
            left: 14px;
            background: var(--accent);
            color: #0A0C10;
            font-weight: 800;
            padding: 4px 12px;
            border-radius: 30px;
            font-size: 0.7rem;
            z-index: 2;
        }
        .product-body {
            padding: 18px;
        }
        .product-title {
            font-weight: 700;
            font-size: 1.1rem;
        }
        .price-wrap {
            display: flex;
            align-items: baseline;
            gap: 12px;
            margin: 10px 0;
        }
        .current-price {
            font-size: 1.5rem;
            font-weight: 800;
            color: var(--accent);
        }
        .old-price {
            font-size: 0.85rem;
            text-decoration: line-through;
            color: #6B7280;
        }
        .rating {
            color: #FFB43B;
            font-size: 0.8rem;
            margin: 6px 0;
        }
        .product-actions {
            display: flex;
            gap: 12px;
            margin-top: 14px;
        }
        .add-cart {
            flex: 1;
            background: var(--accent);
            border: none;
            border-radius: 40px;
            padding: 10px;
            font-weight: 700;
            color: #0A0C10;
            cursor: pointer;
            transition: 0.2s;
        }
        .add-cart:hover {
            background: white;
        }
        .wishlist {
            background: #1E2530;
            border: none;
            border-radius: 40px;
            width: 42px;
            color: white;
            cursor: pointer;
        }

        /* flash sale section */
        .flash-sale {
            background: linear-gradient(125deg, #0B0F16, #10161F);
            border-radius: 32px;
            display: flex;
            flex-wrap: wrap;
            overflow: hidden;
            border: 1px solid #2D3748;
        }
        .flash-img {
            flex: 1;
            min-width: 280px;
            background: url('https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?auto=format&fit=crop&w=800&q=80') center/cover;
        }
        .flash-content {
            flex: 1;
            padding: 40px;
        }
        .timer-group {
            display: flex;
            gap: 16px;
            margin: 24px 0;
        }
        .time-card {
            background: #00000066;
            backdrop-filter: blur(8px);
            padding: 12px 16px;
            border-radius: 20px;
            text-align: center;
            min-width: 70px;
            border: 1px solid #2c3e50;
        }
        .time-num {
            font-size: 2rem;
            font-weight: 800;
            color: var(--accent);
        }
        .deal-price {
            font-size: 2rem;
            font-weight: 800;
        }
        .deal-discount {
            background: #E5484D;
            display: inline-block;
            padding: 6px 12px;
            border-radius: 50px;
            font-weight: 700;
            margin-left: 12px;
        }

        /* testimonials */
        .testimonials-slider {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 12px 4px 20px;
        }
        .testimonial-card {
            background: #11151E;
            border-radius: 28px;
            padding: 28px;
            min-width: 320px;
            border: 1px solid #282E3A;
        }
        .testimonial-card .rating i {
            color: #FFD966;
            margin-right: 2px;
        }

        /* newsletter modern */
        .newsletter-modern {
            background: radial-gradient(ellipse at 30% 20%, #16222e, #080b10);
            border-radius: 40px;
            padding: 56px 32px;
            text-align: center;
        }
        .newsletter-group {
            display: flex;
            justify-content: center;
            gap: 12px;
            flex-wrap: wrap;
            margin-top: 24px;
        }
        .newsletter-group input {
            padding: 14px 24px;
            border-radius: 60px;
            border: none;
            background: #1F2937;
            color: white;
            width: 300px;
        }
        footer {
            border-top: 1px solid #1c212a;
            padding: 40px 0 32px;
            margin-top: 48px;
        }

        @media (max-width: 860px) {
            .main-nav { display: none; }
            .mobile-toggle { display: block; }
            .hero-content h1 { font-size: 2.4rem; }
            .products-grid { grid-template-columns: repeat(auto-fill, minmax(240px, 1fr)); }
        }
        @media (max-width: 580px) {
            .container { padding: 0 18px; }
            .flash-content { padding: 28px; }
        }
        .mobile-menu-active {
            display: block !important;
            background: #0C1119;
            border-top: 1px solid #2a2f3a;
        }
    </style>
</head>
<body>
    <header>
        <div class="container header-inner">
            <div style="display: flex; align-items: center; gap: 20px;">
                <button class="mobile-toggle" id="mobileMenuBtn"><i class="fas fa-bars"></i></button>
                <a class="brand" href="#">NEXUS<span>SHOP</span></a>
            </div>
            <nav class="main-nav">
                <ul>
                    <li><a href="#home"><i class="fas fa-compass"></i> Explore</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-bolt"></i> Flash Sale</a></li>
                    <li><a href="#"><i class="fas fa-gem"></i> New</a></li>
                </ul>
            </nav>
            <div style="display: flex; align-items: center; gap: 18px;">
                <div class="search">
                    <i class="fas fa-search" style="color:#aaa;"></i>
                    <input type="text" id="searchInput" placeholder="Search product...">
                </div>
                <div class="cart" id="cartBtn">
                    <i class="fas fa-bag-shopping"></i>
                    <span class="cart-count" id="cartCount">0</span>
                </div>
                <button class="icon-btn"><i class="far fa-user"></i></button>
            </div>
        </div>
        <div id="mobileNavMenu" style="display: none; padding: 16px 24px; background: #0E1219;">
            <ul style="list-style: none; display: flex; flex-direction: column; gap: 14px;">
                <li><a href="#">✨ Home</a></li>
                <li><a href="#products">🔥 Trending</a></li>
                <li><a href="#deals">⚡ Deals</a></li>
                <li><a href="#">📦 About</a></li>
            </ul>
        </div>
    </header>

    <main>
        <!-- Hero Section -->
        <section class="hero" id="home">
            <div class="container hero-content">
                <h1>Beyond ordinary.<br>Future-forward <span style="color:#00D4FF">essentials</span>.</h1>
                <p>Step into the next generation of e‑commerce. Curated tech, style and gear. Limited drops & free shipping.</p>
                <div class="btn-group">
                    <button class="btn btn-primary" id="shopNowBtn"><i class="fas fa-store"></i> Shop now</button>
                    <button class="btn btn-outline" id="exploreBtn"><i class="fas fa-play"></i> Explore deals</button>
                </div>
            </div>
        </section>

        <!-- Categories -->
        <section class="container" style="padding: 56px 0 32px;">
            <div class="section-header">
                <h2>Shop by category</h2>
                <p>Discover what moves you</p>
            </div>
            <div class="categories-grid" id="categoriesGrid"></div>
        </section>

        <!-- Trending Products -->
        <section class="container" id="products" style="padding: 40px 0 60px;">
            <div class="section-header">
                <h2>⚡ Trending now</h2>
                <p>Most loved picks by our community</p>
            </div>
            <div class="products-grid" id="productsGrid"></div>
        </section>

        <!-- Flash Sale Deal -->
        <section class="container" id="deals" style="padding: 20px 0 60px;">
            <div class="section-header">
                <h2>🔥 Flash sale</h2>
                <p>Hurry, exclusive discount</p>
            </div>
            <div class="flash-sale">
                <div class="flash-img"></div>
                <div class="flash-content">
                    <h2 style="font-size: 1.9rem;">MacBook Air M2</h2>
                    <p style="color:#B0C4DE; margin: 12px 0;">Ultra‑thin, unworldly performance. Perfect for creators.</p>
                    <div class="timer-group" id="timerRoot">
                        <div class="time-card"><div class="time-num" id="dealDays">0</div><span>Days</span></div>
                        <div class="time-card"><div class="time-num" id="dealHours">00</div><span>Hours</span></div>
                        <div class="time-card"><div class="time-num" id="dealMinutes">00</div><span>Mins</span></div>
                        <div class="time-card"><div class="time-num" id="dealSeconds">00</div><span>Secs</span></div>
                    </div>
                    <div><span class="deal-price">$999</span><span class="old-price" style="margin-left:12px;">$1,299</span><span class="deal-discount">-23%</span></div>
                    <button class="btn btn-primary" id="flashDealBtn" style="margin-top:24px;"><i class="fas fa-zap"></i> Add to cart</button>
                </div>
            </div>
        </section>

        <!-- Testimonials row -->
        <section class="container" style="padding: 20px 0 40px;">
            <div class="section-header"><h2><i class="fas fa-star-of-life"></i> Trusted voices</h2><p>Real reviews from our tribe</p></div>
            <div class="testimonials-slider" id="testimonialSlider">
                <div class="testimonial-card"><div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div><p>“Insane quality and premium packaging. My new go-to shop.”</p><strong>— Mia Chen</strong></div>
                <div class="testimonial-card"><div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div><p>“Fast delivery and the product exceeded my expectations. Will recommend!”</p><strong>— David O.</strong></div>
                <div class="testimonial-card"><div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div><p>“Unique finds and super responsive support. Loved the experience.”</p><strong>— Sophia K.</strong></div>
            </div>
        </section>

        <!-- Newsletter modern -->
        <section class="container">
            <div class="newsletter-modern">
                <h3>Join the inner circle</h3>
                <p style="color: #A0AFBF;">Get 15% off your next order + early access</p>
                <div class="newsletter-group">
                    <input type="email" id="newsEmail" placeholder="Your email address">
                    <button class="btn btn-primary" id="subscribeNewsBtn">Subscribe →</button>
                </div>
                <p id="newsMsg" style="margin-top: 16px; font-size: 13px;"></p>
            </div>
        </section>
    </main>

    <footer>
        <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 20px;">
            <div><h3 style="color:var(--accent)">NEXUS</h3><p style="color:#7e8b9c;">Next‑gen commerce</p></div>
            <div><strong>Explore</strong><br><span style="color:#9AA3B5;">New arrivals</span><br><span style="color:#9AA3B5;">Gift cards</span></div>
            <div><strong>Support</strong><br><span style="color:#9AA3B5;">FAQs</span><br><span style="color:#9AA3B5;">Returns</span></div>
        </div>
        <div class="container" style="text-align: center; margin-top: 32px; color:#5B677B;">© <span id="year"></span> NexusShop — Futuristic retail</div>
    </footer>

    <script>
        // ========== DATA ==========
        const CATEGORIES = [
            { id: 'phones', name: 'Phones', icon: 'fa-mobile-alt' },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop-code' },
            { id: 'audio', name: 'Audio', icon: 'fa-headphones' },
            { id: 'wearables', name: 'Wearables', icon: 'fa-apple-alt' },
            { id: 'gaming', name: 'Gaming', icon: 'fa-gamepad' },
            { id: 'fashion', name: 'Fashion', icon: 'fa-vest' }
        ];
        const PRODUCTS = [
            { id: 101, title: 'iPhone 15 Pro', price: 1099, oldPrice: 1199, rating: 4.9, reviews: 342, img: 'https://images.unsplash.com/photo-1695048133142-1a20484d2569?auto=format&fit=crop&w=600&q=80', badge: 'NEW', category: 'phones' },
            { id: 102, title: 'ASUS ROG Zephyrus', price: 1899, oldPrice: 2199, rating: 4.8, reviews: 156, img: 'https://images.unsplash.com/photo-1603302576837-37561b2e2302?auto=format&fit=crop&w=600&q=80', badge: '-14%', category: 'laptops' },
            { id: 103, title: 'Sony WH-1000XM5', price: 398, oldPrice: 499, rating: 5, reviews: 215, img: 'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80', badge: 'HOT', category: 'audio' },
            { id: 104, title: 'Apple Watch Ultra 2', price: 729, rating: 4.7, reviews: 98, img: 'https://images.unsplash.com/photo-1694423158977-5dd1eb27d142?auto=format&fit=crop&w=600&q=80', badge: 'LIMITED', category: 'wearables' },
            { id: 105, title: 'RTX 4070 Ti', price: 799, oldPrice: 949, rating: 4.9, reviews: 67, img: 'https://images.unsplash.com/photo-1587202372775-8e1cbfb0debc?auto=format&fit=crop&w=600&q=80', badge: 'SALE', category: 'gaming' },
            { id: 106, title: 'Off-White Hoodie', price: 189, rating: 4.5, reviews: 203, img: 'https://images.unsplash.com/photo-1556905055-8f358a7a47b2?auto=format&fit=crop&w=600&q=80', category: 'fashion' }
        ];

        let cartItemsCount = 0;
        const cartCountSpan = document.getElementById('cartCount');
        const categoriesGrid = document.getElementById('categoriesGrid');
        const productsGrid = document.getElementById('productsGrid');
        const searchInput = document.getElementById('searchInput');

        function updateCartUI() { cartCountSpan.innerText = cartItemsCount; }

        function addToCartById(id) {
            const product = PRODUCTS.find(p => p.id === id);
            if(product) {
                cartItemsCount++;
                updateCartUI();
                const btn = document.querySelector(`.add-cart[data-id='${id}']`);
                if(btn) { btn.innerHTML = '<i class="fas fa-check"></i> Added'; setTimeout(() => btn.innerHTML = '<i class="fas fa-cart-plus"></i> Add', 1000); }
                else alert(`${product.title} added to cart (demo)`);
            }
        }

        function renderCategories() {
            categoriesGrid.innerHTML = CATEGORIES.map(cat => `
                <div class="cat-card" data-cat="${cat.name.toLowerCase()}">
                    <i class="fas ${cat.icon}"></i>
                    <h4>${cat.name}</h4>
                    <span style="font-size:12px; color:#6B7B8F;">shop now →</span>
                </div>
            `).join('');
            document.querySelectorAll('.cat-card').forEach(card => {
                card.addEventListener('click', () => {
                    const catName = card.getAttribute('data-cat');
                    searchInput.value = catName;
                    filterProducts(catName);
                    document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
                });
            });
        }

        function filterProducts(query) {
            const q = query.trim().toLowerCase();
            if(!q) return renderProducts(PRODUCTS);
            const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
            renderProducts(filtered);
        }

        function renderProducts(productsArray) {
            productsGrid.innerHTML = productsArray.map(p => `
                <div class="product-card">
                    ${p.badge ? `<div class="product-badge">${p.badge}</div>` : ''}
                    <img class="product-img" src="${p.img}" alt="${p.title}" loading="lazy">
                    <div class="product-body">
                        <div class="product-title">${p.title}</div>
                        <div class="price-wrap">
                            <span class="current-price">$${p.price.toLocaleString()}</span>
                            ${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}
                        </div>
                        <div class="rating"><i class="fas fa-star"></i> ${p.rating} (${p.reviews})</div>
                        <div class="product-actions">
                            <button class="add-cart" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
                            <button class="wishlist"><i class="far fa-heart"></i></button>
                        </div>
                    </div>
                </div>
            `).join('');
            document.querySelectorAll('.add-cart').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    const id = parseInt(btn.getAttribute('data-id'));
                    addToCartById(id);
                });
            });
        }

        // timer logic 
        function initDealTimer() {
            let targetTime = new Date();
            targetTime.setDate(targetTime.getDate() + 1);
            targetTime.setHours(targetTime.getHours() + 2, targetTime.getMinutes(), targetTime.getSeconds());
            function update() {
                const now = new Date();
                const diff = targetTime - now;
                if(diff <= 0) { 
                    document.getElementById('dealDays').innerText = '0'; document.getElementById('dealHours').innerText = '00';
                    document.getElementById('dealMinutes').innerText = '00'; document.getElementById('dealSeconds').innerText = '00';
                    return;
                }
                const days = Math.floor(diff / (1000*60*60*24));
                const hrs = Math.floor((diff % (86400000)) / 3600000);
                const mins = Math.floor((diff % 3600000) / 60000);
                const secs = Math.floor((diff % 60000) / 1000);
                document.getElementById('dealDays').innerText = days;
                document.getElementById('dealHours').innerText = String(hrs).padStart(2,'0');
                document.getElementById('dealMinutes').innerText = String(mins).padStart(2,'0');
                document.getElementById('dealSeconds').innerText = String(secs).padStart(2,'0');
            }
            update();
            setInterval(update, 1000);
        }

        // event binding
        document.getElementById('shopNowBtn').addEventListener('click', () => document.getElementById('products').scrollIntoView({ behavior: 'smooth' }));
        document.getElementById('exploreBtn').addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));
        document.getElementById('searchBtn')?.addEventListener('click', () => filterProducts(searchInput.value));
        searchInput.addEventListener('keyup', (e) => { if(e.key === 'Enter') filterProducts(e.target.value); });
        document.getElementById('flashDealBtn').addEventListener('click', () => { cartItemsCount++; updateCartUI(); alert('🔥 MacBook added to cart'); });
        document.getElementById('subscribeNewsBtn').addEventListener('click', () => {
            const email = document.getElementById('newsEmail').value.trim();
            const msgBox = document.getElementById('newsMsg');
            if(!email || !email.includes('@')) msgBox.innerText = 'Valid email needed!';
            else { msgBox.innerText = '🎉 Subscribed! Enjoy 15% off coupon.'; msgBox.style.color = '#2DD4BF'; document.getElementById('newsEmail').value = ''; setTimeout(()=> msgBox.innerText='', 3000); }
        });
        document.getElementById('mobileMenuBtn').addEventListener('click', () => {
            const menuDiv = document.getElementById('mobileNavMenu');
            menuDiv.style.display = menuDiv.style.display === 'none' ? 'block' : 'none';
        });
        document.getElementById('cartBtn').addEventListener('click', () => alert(`Cart items: ${cartItemsCount} (demo checkout)`));
        
        // init
        renderCategories();
        renderProducts(PRODUCTS);
        initDealTimer();
        document.getElementById('year').innerText = new Date().getFullYear();
        updateCartUI();
    </script>
</body>
</html>

import React from 'react';

const Hero: React.FC = () => {
  return (
    <section className="relative overflow-hidden bg-gradient-to-b from-white to-chicken-cream/60" style={{ minHeight: 'calc(100vh - 64px)' }}>
      {/* Decorative blurred orbs */}
      <div className="pointer-events-none absolute inset-0">
        <div className="absolute -top-24 -left-24 h-72 w-72 rounded-full bg-chicken-orange/10 blur-3xl" />
        <div className="absolute -bottom-24 -right-24 h-72 w-72 rounded-full bg-chicken-gold/10 blur-3xl" />
      </div>

      <div className="relative max-w-5xl mx-auto px-4 sm:px-6 lg:px-8 py-16 sm:py-20 md:py-24 text-center">
        <div className="relative inline-flex items-center justify-center mb-6 animate-scale-in">
          <span className="absolute inset-0 -m-3 rounded-full conic-ring opacity-30 blur-md spin-slow" />
          <div className="relative p-1 rounded-full bg-white/70 shadow-sm ring-1 ring-chicken-sesame/30 transition-transform duration-300 hover:scale-105">
            <img
              src="/logo.jpg"
              alt="R3publika Chicken Inasal logo"
              className="w-20 h-20 md:w-28 md:h-28 rounded-full object-cover ring-2 ring-chicken-orange shadow-md animate-bounce-gentle"
              onError={(e) => {
                e.currentTarget.src = "/logo.jpg";
              }}
            />
          </div>
        </div>

        <h1 className="text-3xl sm:text-4xl md:text-5xl font-pretendard font-semibold tracking-tight text-chicken-dark mb-4 animate-fade-in">
          R3PUBLIKA PINAKA BASKÚG NGA INASAL MEAL!
        </h1>
        <p className="mx-auto max-w-3xl text-base sm:text-lg md:text-xl text-gray-700 leading-relaxed animate-slide-up">
          R3PUBLIKA’s very own Signature Inasal and other signature dishes paired with Garlic
          Anatto Rice Meals with Sayamni and Home Made Atchara.
        </p>

        <div className="mt-8 flex items-center justify-center gap-3">
          <a href="#menu" className="btn-17 glow-pulse">
            <span className="text-container">
              <span className="text">Explore Menu</span>
            </span>
          </a>
        </div>
      </div>
    </section>
  );
};

export default Hero;
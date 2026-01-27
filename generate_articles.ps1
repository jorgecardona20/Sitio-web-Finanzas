
# Define the articles list with metadata
$articles = @(
    @{
        Filename = "invertir-100-pesos.html"
        Title = "La guía definitiva: Empieza a invertir con $100 pesos antes de los 25"
        Category = "Inversión"
        Image = "https://images.unsplash.com/photo-1579621970563-ebec7560ff3e?q=80&w=2070&auto=format&fit=crop"
        Description = "Aprende los conceptos básicos para empezar tu portafolio de inversión con poco capital."
    },
    @{
        Filename = "apps-presupuesto.html"
        Title = "5 Apps de presupuesto que sí vas a usar realmente"
        Category = "Tecnología"
        Image = "https://images.unsplash.com/photo-1551288049-bebda4e38f71?q=80&w=1200&auto=format&fit=crop"
        Description = "Deja de usar Excel. Estas aplicaciones automatizan tus finanzas y te ayudan a ahorrar sin dolor."
    },
    @{
        Filename = "latte-factor-mito.html"
        Title = "El 'Latte Factor': ¿Dejar el café te hará millonario?"
        Category = "Análisis"
        Image = "https://images.unsplash.com/photo-1497935586351-b67a49e012bf?q=80&w=1200&auto=format&fit=crop"
        Description = "Analizamos matemáticamente si los gastos hormiga son realmente el problema o si deberías enfocarte en ganar más."
    },
    @{
        Filename = "freelance-guia.html"
        Title = "Cómo cobrar tus primeros trabajos freelance sin miedo"
        Category = "Carrera"
        Image = "https://images.unsplash.com/photo-1522071820081-009f0129c71c?q=80&w=1200&auto=format&fit=crop"
        Description = "Estrategias de negociación, contratos básicos y cómo ponerle precio a tu hora de trabajo."
    },
    @{
        Filename = "bitcoin-ethereum-guia.html"
        Title = "Bitcoin vs Ethereum: Guía para principiantes 2026"
        Category = "Cripto"
        Image = "https://images.unsplash.com/photo-1621504450162-e152993bcda0?q=80&w=1200&auto=format&fit=crop"
        Description = "Entiende las diferencias fundamentales entre las dos criptomonedas más grandes del mercado."
    },
    @{
        Filename = "fondo-emergencia.html"
        Title = "Fondo de Emergencia: ¿Cuánto realmente necesito?"
        Category = "Básicos"
        Image = "https://images.unsplash.com/photo-1579621970724-0377d6b959d1?w=800&auto=format&fit=crop"
        Description = "La guía paso a paso para calcular tu red de seguridad financiera y dónde guardarla."
    },
    @{
        Filename = "tarjetas-credito-guia.html"
        Title = "Tarjetas de Crédito: Guía para no pagar intereses"
        Category = "Deuda"
        Image = "https://images.unsplash.com/photo-1556742102-fab37cb697bc?w=800&auto=format&fit=crop"
        Description = "Domina las fechas de corte y fechas de pago para financiarte gratis hasta por 50 días."
    },
    @{
        Filename = "viajar-barato-estudiante.html"
        Title = "Hacks para viajar barato siendo estudiante"
        Category = "Lifestyle"
        Image = "https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?w=800&auto=format&fit=crop"
        Description = "Descubre cómo usar VPNs, alertas de vuelos y voluntariados para recorrer el mundo con poco presupuesto."
    },
    @{
        Filename = "guia-sat-2026.html"
        Title = "Guía de supervivencia para el SAT 2026"
        Category = "Adulting"
        Image = "https://images.unsplash.com/photo-1554224155-6726b3ff858f?w=800&auto=format&fit=crop"
        Description = "Todo lo que necesitas saber sobre tus impuestos, devoluciones y facturación electrónica."
    },
    @{
        Filename = "minimalismo-financiero.html"
        Title = "Minimalismo Financiero: Menos cosas, más paz"
        Category = "Filosofía"
        Image = "https://images.unsplash.com/photo-1494438639946-1ebd1d20bf85?w=800&auto=format&fit=crop"
        Description = "Cómo aplicar la filosofía minimalista a tu cartera para reducir el estrés y aumentar tus ahorros."
    },
    @{
        Filename = "trampa-suscripciones.html"
        Title = "La trampa de las suscripciones (Gastos Hormiga)"
        Category = "Gastos"
        Image = "https://images.unsplash.com/photo-1522869635100-8b4456208981?w=800&auto=format&fit=crop"
        Description = "Auditoría de servicios digitales: ¿realmente necesitas 4 plataformas de streaming?"
    },
    @{
        Filename = "rentar-o-comprar.html"
        Title = "¿Rentar o Comprar? La verdad incómoda"
        Category = "Vivienda"
        Image = "https://images.unsplash.com/photo-1560518883-ce09059eeffa?w=800&auto=format&fit=crop"
        Description = "Desmitificando la idea de que 'rentar es tirar el dinero'. Análisis de costos ocultos de ser propietario."
    },
    @{
        Filename = "nfts-2026.html"
        Title = "¿Siguen vivos los NFTs en 2026?"
        Category = "Cripto"
        Image = "https://images.unsplash.com/photo-1620321023374-d1a68fbc720d?w=800&auto=format&fit=crop"
        Description = "Estado actual del mercado de arte digital y coleccionables en la blockchain."
    },
    @{
        Filename = "negociar-salario.html"
        Title = "Cómo negociar tu salario sin morir de nervios"
        Category = "Carrera"
        Image = "https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?w=800&auto=format&fit=crop"
        Description = "Guiones y técnicas probadas para aumentar tu compensación en tu próximo trabajo."
    },
    @{
        Filename = "meal-prep-ahorro.html"
        Title = "Meal Prep: Ahorra $3,000 al mes cocinando"
        Category = "Ahorro"
        Image = "https://images.unsplash.com/photo-1556910103-1c02745a30bf?w=800&auto=format&fit=crop"
        Description = "Estrategias de cocina eficiente para comer saludable y barato toda la semana."
    },
    @{
        Filename = "seguros-medicos.html"
        Title = "Seguros: El único gasto que esperas nunca usar"
        Category = "Protección"
        Image = "https://images.unsplash.com/photo-1450101499163-c8848c66ca85?w=800&auto=format&fit=crop"
        Description = "Guía básica de seguros de gastos médicos mayores y por qué no deberías vivir sin uno."
    },
    @{
        Filename = "libros-finanzas.html"
        Title = "5 Libros de Dinero que no son aburridos"
        Category = "Educación"
        Image = "https://images.unsplash.com/photo-1497633762265-9d179a990aa6?w=800&auto=format&fit=crop"
        Description = "Reseñas de los mejores libros de educación financiera para empezar tu camino."
    }
)

# Read the template content
$templatePath = "C:\Users\joege\.gemini\antigravity\scratch\blog_project\articulo-ejemplo.html"
$templateContent = Get-Content -Path $templatePath -Raw -Encoding UTF8

foreach ($article in $articles) {
    $newContent = $templateContent
    
    # Replace Metadata
    $newContent = $newContent.Replace("La guía definitiva: Empieza a invertir con $100 pesos antes de los 25", $article.Title)
    $newContent = $newContent.Replace("La guía definitiva: Empieza a invertir con $100 pesos", $article.Title) # Title tag variation if any
    
    # Replace Category Tag
    $newContent = $newContent -replace '<span class="tag">.*?</span>', ('<span class="tag">' + $article.Category + '</span>')
    
    # Replace Featured Image
    $newContent = $newContent -replace '<img src=".*?" alt="Inversión" class="featured-img">', ('<img src="' + $article.Image + '" alt="' + $article.Category + '" class="featured-img">')
    
    # Replace Intro Paragraph (First paragraph) to make it unique
    $introText = "<p>Bienvenido a nuestra guía completa sobre <strong>" + $article.Title + "</strong>. " + $article.Description + " En este artículo, profundizaremos en las estrategias clave que necesitas conocer para dominar este aspecto de tus finanzas personales.</p>"
    $newContent = $newContent -replace '<p>Si alguna vez has escuchado que "invertir es solo para ricos".*?del mundo.</p>', $introText
    
    # Write to new file
    $newPath = "C:\Users\joege\.gemini\antigravity\scratch\blog_project\" + $article.Filename
    $newContent | Set-Content -Path $newPath -Encoding UTF8
    Write-Host "Created $($article.Filename)"
}

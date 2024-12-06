<header>

    <h1>Procesadora de Alimentos del Centro</h1>

    <nav>
        <ul>
            <li><a href="{{ route('home') }}" class="{{ request()->routeIs('home') ? 'active' : '' }}">Home</a></li>
            <li><a href="{{ route('institucion.index') }}" class="{{ request()->routeIs('institucion.index') ? 'active' : '' }}">Institución</a></li>
            <li><a href="{{ route('nosotros') }}" class="{{ request()->routeIs('nosotros') ? 'active' : '' }}">Nosotros</a></li>
            <li><a href="{{ route('contactanos.index') }}" class="{{ request()->routeIs('contactanos.index') ? 'active' : '' }}">Contáctanos</a></li>
        </ul>
    </nav>

</header>

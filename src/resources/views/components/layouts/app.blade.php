<!-- No <head> -->
@livewireStyles

<!-- Antes de </body> -->
@livewireScripts
<x-layouts.app.sidebar :title="$title ?? null">
    <flux:main>
        {{ $slot }}
    </flux:main>
</x-layouts.app.sidebar>

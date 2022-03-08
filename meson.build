project(
    'com.github.rafaelcn.enotion',
    'vala', 'c',
    version: '1.0.0'
)

executable(
    meson.project_name(),
    'src' / 'Application.vala',
    dependencies: [
        dependency('gtk+-3.0'),
        dependency('webkit2gtk-4.0')
    ],
    install: true
)

install_data(
    'data' / 'enotion.desktop',
    install_dir: get_option('datadir') / 'applications',
    rename: meson.project_name() + '.desktop'
)


install_data(
    'data' / 'enotion.metainfo.xml',
    install_dir: get_option('datadir') / 'metainfo',
    rename: meson.project_name() + '.metainfo.xml'
)

icon_sizes = ['16', '24', '32', '48', '64', '128']

foreach i : icon_sizes
    install_data(
        'data' / 'icons' / i + '.svg',
        install_dir: get_option('datadir') / 'icons' / 'hicolor' / i + 'x' + i / 'apps',
        rename: meson.project_name() + '.svg'
    )
    install_data(
        'data' / 'icons' / i + '.svg',
        install_dir: get_option('datadir') / 'icons' / 'hicolor' / i + 'x' + i + '@2' / 'apps',
        rename: meson.project_name() + '.svg'
    )
endforeach
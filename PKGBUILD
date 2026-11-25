pkgname=vybeos-branding
pkgver=1.1.6
pkgrel=1
pkgdesc="VybeOS branding and default desktop theme"
arch=('any')
license=('custom')

package() {
    local f="$startdir/files"
    local share="$pkgdir/usr/share"
    
    # branding
    install -Dm644 "$f/os-release" "$share/vybeos/os-release"
    install -Dm644 "$f/issue" "$share/vybeos/issue"
    install -Dm755 "$f/apply-branding.sh" "$share/vybeos/apply-branding.sh"
    install -Dm644 "$f/00-vybeos-branding.hook" "$share/libalpm/hooks/00-vybeos-branding.hook"

    # wallpaper
    install -d "$share/backgrounds/vybeos"
    install -m644 "$f"/backgrounds/vybeos/* "$share/backgrounds/vybeos/"

    # logo
    install -Dm644 "$f/logo/vybeos/logo.jpg" "$share/vybeos/logo/logo.jpg"

    # fastfetch
    install -Dm644 "$f/fastfetch/config.jsonc" "$pkgdir/etc/xdg/fastfetch/config.jsonc"
    install -Dm644 "$f/fastfetch/vybeos.txt" "$share/vybeos/fastfetch/vybeos.txt"

    # sway (config penuh, di-load via XDG dirs)
    install -Dm644 "$f/sway/config" "$share/vybeos/sway/config"

    # waybar
    install -Dm644 "$f/waybar/config" "$share/vybeos/waybar/config"
    install -Dm644 "$f/waybar/style.css" "$share/vybeos/waybar/style.css"

    # wlogout
    install -Dm644 "$f/wlogout/layout" "$share/vybeos/wlogout/layout"
    install -Dm644 "$f/wlogout/style.css" "$share/vybeos/wlogout/style.css"
}

# ❄️ Nix

Repeatable rice in real-time.

Learning the ins and outs of Nix configurations one uninstalled driver at a time 🤓.

## Daemons

| Host                                           | Function    | CPU              | Graphics     | Memory             |
|------------------------------------------------|-------------|------------------|--------------|--------------------|
| [Keres](https://en.wikipedia.org/wiki/Keres)   | Development | i7-10700@4.8GHz  | Quadro P2200 | 48GB DDR4@2666MHz  |
| [Nyx](https://en.wikipedia.org/wiki/Nyx)       | Gaming      | i7-8770K@4.7GHz  | RTX2080      | 16GGB DDR4@2400MHz |
| [Erebos](https://en.wikipedia.org/wiki/Erebos) | Server      | i7-10710U@4.7GHz | Intel UHD    | 8GB DDR4@2667MHz   |

## Quickstart

```shell
sudo nixos-rebuild test --flake /home/tqid/nix#$(hostname)
```


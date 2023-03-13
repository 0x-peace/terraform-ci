resource "yandex_vpc_network" "default" {
  name        = "default"
  description = "Core247 default network"
}

resource "yandex_vpc_subnet" "default-ru-central1-a" {
  description    = "core247 subnet for ru-central1-a"
  v4_cidr_blocks = ["10.150.0.0/24"]
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.default.id
}

resource "yandex_vpc_subnet" "default-ru-central1-b" {
  description    = "core247 subnet for ru-central1-b"
  v4_cidr_blocks = ["10.151.0.0/24"]
  zone           = "ru-central1-b"
  network_id     = yandex_vpc_network.default.id
}

resource "yandex_vpc_subnet" "default-ru-central1-c" {
  description    = "core247 subnet for ru-central1-c"
  v4_cidr_blocks = ["10.152.0.0/24"]
  zone           = "ru-central1-c"
  network_id     = yandex_vpc_network.default.id
}

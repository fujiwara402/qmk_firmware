# Copyright 2017 Luiz Ribeiro <luizribeiro@gmail.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# MCU name
MCU = atmega32a
PROTOCOL = VUSB

# unsupported features for now
NO_UART = yes
NO_SUSPEND_POWER_DOWN = yes

# processor frequency
F_CPU = 12000000

# build options
BOOTMAGIC_ENABLE = no
MOUSEKEY_ENABLE = no
EXTRAKEY_ENABLE = yes
CONSOLE_ENABLE = no
COMMAND_ENABLE = yes
BACKLIGHT_ENABLE = no
RGBLIGHT_ENABLE = no
RGBLIGHT_CUSTOM_DRIVER = no
KEY_LOCK_ENABLE = yes

OPT_DEFS = -DDEBUG_LEVEL=0
OPT_DEFS += -DBOOTLOADER_SIZE=2048

# custom matrix setup
CUSTOM_MATRIX = yes
SRC = matrix.c i2c.c

# programming options
PROGRAM_CMD = ./keyboards/jj40/program $(TARGET).hex

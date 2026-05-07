# Module 1 – Wi-Fi Fundamentals

### Question: In which OSI layer does the Wi-Fi standard/protocol fit?

Answer:
Wi-Fi is mainly associated with Layer 2, the Data Link Layer, because it manages wireless framing, medium access, and frame delivery. More specifically, those responsibilities sit in the MAC sublayer. At the same time, Wi-Fi also depends on Layer 1, the Physical Layer, since the actual communication is carried over radio waves. So Wi-Fi spans both the physical transmission side and the link-layer control side.

---

### Question: List Wi-Fi devices used in daily life and map them to Wi-Fi generations based on their properties.

Answer:
Devices that commonly use Wi-Fi in daily life include laptops, smartphones, tablets, smart TVs, printers, and gaming consoles. Their supported generation depends on the chipset, antenna design, and intended usage.

- Laptop:
  - Wi-Fi Standard: Wi-Fi 6 (802.11ax)
  - Bands: 2.4 GHz and 5 GHz
  - Speed: Up to 9.6 Gbps
  - Features: MU-MIMO support, reduced latency, and better efficiency in busy networks

- Smartphone:
  - Wi-Fi Standard: Wi-Fi 6 (802.11ax)
  - Bands: 2.4 GHz and 5 GHz
  - Features: Improved throughput and more stable performance in crowded environments

---

### Question: What is BSS and ESS?

Answer:

- BSS (Basic Service Set):
  A BSS is the smallest Wi-Fi network unit. It usually consists of one access point and the devices connected to it. The BSS is identified by a BSSID, which is generally the MAC address of the AP radio. It is commonly used in small wireless setups.

- ESS (Extended Service Set):
  An ESS is created when multiple BSSs are connected through a distribution system. This lets users move from one AP to another without losing connectivity. It is identified by the SSID and is typically used in larger environments such as offices, campuses, and public spaces.

---

### Question: What are the basic functionalities of a Wi-Fi Access Point?

Answer:
A Wi-Fi Access Point acts as the wireless bridge between client devices and the wired network.

Functions:
- Provides wireless connectivity through radio transmission
- Connects wireless clients to a wired LAN through a router or switch
- Forwards traffic between Wi-Fi devices and the local network
- Broadcasts the SSID so clients can discover the network
- Works with network services such as DHCP to help assign IP addresses

---

### Question: Difference between Bridge mode and Repeater mode

Answer:

- Bridge Mode:
  Bridge mode connects two separate network segments and makes them behave as one network. It is commonly used when two locations need to be linked over a wireless or wired bridge.

- Repeater Mode:
  Repeater mode extends the coverage of an existing Wi-Fi network by receiving the signal and sending it out again. It does not create a new network; it mainly boosts the existing one.

---

### Question: What are the differences between 802.11a and 802.11b?

Answer:

- 802.11a:
  - Frequency: 5 GHz
  - Speed: Up to 54 Mbps
  - Range: Shorter range than 2.4 GHz standards
  - Interference: Lower interference
  - Modulation: OFDM

- 802.11b:
  - Frequency: 2.4 GHz
  - Speed: Up to 11 Mbps
  - Range: Better coverage
  - Interference: More interference from other devices
  - Modulation: DSSS

---

### Question: Compare 2.4 GHz and 5 GHz Wi-Fi bands with observed device properties.

Answer:

- 2.4 GHz:
  - Speed: Up to 150 Mbps
  - Range: Around 100 meters
  - Channel Width: 20/40 MHz
  - Interference: High

- 5 GHz:
  - Speed: Up to 1.2 Gbps
  - Range: Around 30 meters
  - Channel Width: 40/80/160 MHz
  - Interference: Low

Device Properties (User: Pooja Srikanth):

- 2.4 GHz Connection:
  - SSID: Nokia C12 Pro
  - Protocol: Wi-Fi 4 (802.11n)
  - Security: WPA3-Personal
  - Adapter: Intel Wi-Fi 6 AX201
  - Band: 2.4 GHz
  - Channel: 1
  - Speed: 72/72 Mbps
  - IPv4: 192.168.x.x
  - MAC: C4-75-AB-BD-XX-XX

- 5 GHz Connection:
  - SSID: Home Network
  - Protocol: Wi-Fi 5 (802.11ac)
  - Security: WPA2-Personal
  - Adapter: Intel Wi-Fi 6 AX201
  - Band: 5 GHz
  - Channel: 36
  - Speed: 390/433 Mbps
  - IPv4: 192.168.x.x
  - MAC: C4-75-AB-BD-XX-XX

---

### Question: What is the difference between IEEE and WFA?

Answer:

- IEEE (Institute of Electrical and Electronics Engineers):
  IEEE defines the technical standards for Wi-Fi, including the 802.11 family.

- WFA (Wi-Fi Alliance):
  The Wi-Fi Alliance handles certification and interoperability testing. It ensures that products from different vendors can work together properly in real networks.

---

### Question: List types of Wi-Fi internet backhaul and describe your network.

Answer:

Types of Backhaul:
- Wired: Uses Ethernet, offers high stability, and usually has low latency
- Wireless: Common in mesh deployments, flexible but less stable than wired links
- Fiber Optic: Very high-speed option used by enterprises and service providers
- Microwave: Useful for long-distance wireless links
- Satellite: Best for remote areas, though latency is higher

User Network:
- Backhaul: Wireless (4G Cellular)
- Provider: Airtel
- Speed: 10–100 Mbps
- Latency: 30–100 ms
- Reliability: Moderate compared with a wired connection

---

### Question: List Wi-Fi topologies and their use cases.

Answer:

- Infrastructure Mode:
  Uses an access point as the center of communication. This is the most common topology in homes and offices.

- Ad-Hoc Mode:
  Devices communicate directly with each other without an AP. It is useful for quick peer-to-peer sharing.

- Mesh Network:
  Multiple APs work together to provide wide and seamless coverage. This is useful in large buildings and campuses.

- Repeater Setup:
  Used to extend signal range into weak coverage areas.

- Point-to-Point:
  Connects two distant locations wirelessly.

Network Topologies:

- Star:
  All devices connect through a central hub or switch.

- Bus:
  Devices share one backbone link, which is mostly seen in older or smaller networks.

- Ring:
  Nodes are arranged in a loop so traffic passes from one device to the next.

- Mesh:
  Nodes interconnect with one another for higher redundancy.

- Tree:
  A hierarchical design often used in campuses and large organizations.

- Hybrid:
  A mix of different topologies used when one model alone is not enough.

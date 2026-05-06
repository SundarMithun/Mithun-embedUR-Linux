# Module 1 – Wi-Fi Fundamentals

### Question: In which OSI layer does the Wi-Fi standard/protocol fit?

Answer:
Wi-Fi mainly operates in the Data Link Layer (Layer 2) of the OSI model, specifically within the MAC (Medium Access Control) sublayer, where it handles frame transmission and error control.  
It also involves the Physical Layer (Layer 1), as it uses radio signals for wireless communication.  
Therefore, Wi-Fi spans both Layer 1 (Physical) and Layer 2 (Data Link).

---

### Question: List Wi-Fi devices used in daily life and map them to Wi-Fi generations based on their properties.

Answer:
Common devices include laptops, smartphones, desktops, smart TVs, and gaming consoles.

- Laptop:
  - Wi-Fi Standard: Wi-Fi 6 (802.11ax)
  - Bands: 2.4 GHz and 5 GHz
  - Speed: Up to 9.6 Gbps
  - Features: Supports MU-MIMO, lower latency, improved efficiency

- Smartphone:
  - Wi-Fi Standard: Wi-Fi 6 (802.11ax)
  - Bands: 2.4 GHz and 5 GHz
  - Features: Better performance in dense environments and higher throughput

---

### Question: What is BSS and ESS?

Answer:

- BSS (Basic Service Set):
  A BSS consists of a single Access Point (AP) along with connected devices. It is the smallest building block of a Wi-Fi network and is identified using a BSSID (AP’s MAC address). Suitable for small networks.

- ESS (Extended Service Set):
  An ESS is formed by connecting multiple BSS units through a distribution system. It allows seamless roaming between access points and is identified using an SSID. Used in large networks.

---

### Question: What are the basic functionalities of a Wi-Fi Access Point?

Answer:
A Wi-Fi Access Point (AP) acts as a bridge between wireless devices and a wired network.

Functions:
- Provides wireless connectivity using radio signals
- Connects wireless clients to wired LAN (router/switch)
- Transfers data between wireless and wired networks
- Broadcasts SSID for network identification
- Enables IP address assignment through network services

---

### Question: Difference between Bridge mode and Repeater mode

Answer:

- Bridge Mode:
  Connects two separate networks (wired or wireless) and makes them function as a single network. Commonly used to link networks across buildings.

- Repeater Mode:
  Extends the coverage of an existing Wi-Fi network by receiving and retransmitting signals. It does not create a new network but strengthens the existing one.

---

### Question: What are the differences between 802.11a and 802.11b?

Answer:

- 802.11a:
  - Frequency: 5 GHz
  - Speed: Up to 54 Mbps
  - Range: Shorter coverage
  - Interference: Less
  - Modulation: OFDM

- 802.11b:
  - Frequency: 2.4 GHz
  - Speed: Up to 11 Mbps
  - Range: Longer coverage
  - Interference: Higher
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
  Responsible for defining Wi-Fi standards such as the 802.11 series.

- WFA (Wi-Fi Alliance):
  Certifies Wi-Fi devices for interoperability and ensures that devices from different vendors work together properly.

---

### Question: List types of Wi-Fi internet backhaul and describe your network.

Answer:

Types of Backhaul:
- Wired: Ethernet-based, stable and low latency
- Wireless: Used in mesh systems, flexible but slightly less stable
- Fiber Optic: High-speed, used by ISPs and enterprises
- Microwave: Long-distance wireless communication
- Satellite: Used in remote areas, higher latency

User Network:
- Backhaul: Wireless (4G Cellular)
- Provider: Airtel
- Speed: 10–100 Mbps
- Latency: 30–100 ms
- Reliability: Moderate, lower than wired

---

### Question: List Wi-Fi topologies and their use cases.

Answer:

- Infrastructure Mode:
  Uses access points; common in homes and offices

- Ad-Hoc Mode:
  Direct device-to-device communication; used for quick sharing

- Mesh Network:
  Multiple APs providing seamless coverage; used in large areas

- Repeater Setup:
  Extends signal range in weak coverage zones

- Point-to-Point:
  Connects two distant networks wirelessly

Network Topologies:

- Star:
  Central hub connection; used in home/office networks

- Bus:
  Single backbone; used in small or legacy networks

- Ring:
  Circular connection; used in specialized networks

- Mesh:
  Fully interconnected; high reliability

- Tree:
  Hierarchical structure; used in campuses

- Hybrid:
  Combination of multiple topologies; used in enterprises

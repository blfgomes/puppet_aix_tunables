# aix\_tunables

#### Table of Contents

1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Usage](#usage)
4. [Reference](#reference)
5. [Limitations](#limitations)
6. [Development](#development)
7. [Authors](#authors)
8. [Contributors](#contributors)

## Overview

Configures AIX Kernel Tunables and Devices.

## Module Description

This module configures the following Kernel Tunables on AIX:
* asoo
* ioo
* nfso
* no
* schedo
* vmo

Restricted tunables are not currently supported.

The following devices are configurable through this module:
* disk
* en
* ent
* sys0

## Usage

### Declaring classes
```puppet
class {'aix_tunables::vmo':
  kernel_heap_psize => 65536,
  kernel_psize      => 65536,
  mbuf_heap_psize   => 65536,
  enforce_default   => true,
}

class {'aix_tunables::ioo':
  j2_dynamicbufferpreallocation => 32,
  numfsbufs                     => 1960,
  enforce_default               => true,
}

class {'aix_tunables::no':
  tcp_recvspace   => 262144,
  tcp_sendspace   => 262144,
  rfc1323         => 1,
  sack            => 1,
  enforce_default => true,
}

class {'aix_tunables::nfso':
  enforce_default => true,
}

class {'aix_tunables::disks::default':
  queue_depth  => 128,
  max_transfer => "0x100000",
}

```

### Hiera
```yaml
aix_tunables::vmo::kernel_heap_psize: 65536
aix_tunables::vmo::kernel_psize: 65536
aix_tunables::vmo::mbuf_heap_psize: 65536
aix_tunables::vmo::enforce_default: true

aix_tunables::ioo::j2_dynamicbufferpreallocation: 32
aix_tunables::ioo::numfsbufs: 1960
aix_tunables::ioo::enforce_default: true

aix_tunables::no::tcp_recvspace: 262144
aix_tunables::no::tcp_sendspace: 262144
aix_tunables::no::rfc1323: 1
aix_tunables::no::sack: 1
aix_tunables::no::enforce_default: true

aix_tunables::nfso::enforce_default: true

aix_tunables::disks::default::queue_depth: 128
aix_tunables::disks::default::max_transfer: "0x100000"
```

## Reference

### Classes

The classes below were implemented to configure AIX. 

The reboot\_notify\_cmd parameter, defined in all classes, takes a string with
the path of an executable to be called in case a setting that was applied 
requires a reboot.

The enforce\_default parameter accepts *true* or *false* (default). When *true*,
the parameters that were not explicitly declared are set to their default AIX
value.

All other parameters were taken from the corresponding tunable parameter or 
device and their documentations should be consulted for an explanation of what
they do.

#### aix_tunables::asoo
| Parameters 
|------------
| aso\_active 
| debug\_level
| enforce\_default
| reboot\_notify\_cmd 

#### aix_tunables::ioo
| Parameters
|------------
| aio\_maxreqs
| aio\_maxservers
| aio\_minservers
| aio\_server\_inactivity
| j2\_atimeupdatesymlink
| j2\_dynamicbufferpreallocation
| j2\_inodecachesize
| j2\_maxpagereadahead
| j2\_maxrandomwrite
| j2\_metadatacachesize
| j2\_minpagereadahead
| j2\_npagesperwritebehindcluster
| j2\_nrandomcluster
| j2\_recoverymode
| j2\_syncpagecount
| j2\_syncpagelimit
| lvm\_bufcnt
| maxpgahead
| maxrandwrt
| numclust
| numfsbufs
| pd\_npages
| posix\_aio\_active
| posix\_aio\_maxreqs
| posix\_aio\_maxservers
| posix\_aio\_minservers
| posix\_aio\_server\_inactivity
| enforce\_default
| reboot\_notify\_cmd

#### aix_tunables::nfso
| Parameters
|------------
|client\_delegation
|nfs\_max\_read\_size
|nfs\_max\_write\_size
|nfs\_rfc1323
|nfs\_securenfs\_authtimeout
|nfs\_server\_base\_priority
|nfs\_server\_clread
|nfs\_use\_reserved\_ports
|nfs\_v3\_server\_readdirplus
|nfs\_v4\_fail\_over\_timeout
|portcheck
|server\_delegation
|utf8\_validation
|enforce\_default
|reboot\_notify\_cmd

#### aix_tunables::no
| Parameters
|------------
|bsd\_loglevel
|fasttimo
|init\_high\_wat
|nbc\_limit
|nbc\_max\_cache
|nbc\_min\_cache
|nbc\_ofile\_hashsz
|nbc\_pseg
|nbc\_pseg\_limit
|ndd\_event\_name
|ndd\_event\_tracing
|net\_buf\_size
|net\_buf\_type
|net\_malloc\_frag\_mask
|netm\_page\_promote
|sb\_max
|send\_file\_duration
|sockthresh
|sodebug
|sodebug\_env
|somaxconn
|tcp\_inpcb\_hashtab\_siz
|tcptr\_enable
|udp\_inpcb\_hashtab\_siz
|use\_sndbufpool
|clean\_partial\_conns
|delayack
|delayackports
|hstcp
|limited\_ss
|rfc1323
|rfc2414
|rto\_high
|rto\_length
|rto\_limit
|rto\_low
|sack
|tcp\_bad\_port\_limit
|tcp\_cwnd\_modified
|tcp\_ecn
|tcp\_ephemeral\_high
|tcp\_ephemeral\_low
|tcp\_fastlo
|tcp\_fastlo\_crosswpar
|tcp\_finwait2
|tcp\_icmpsecure
|tcp\_init\_window
|tcp\_keepcnt
|tcp\_keepidle
|tcp\_keepinit
|tcp\_keepintvl
|tcp\_limited\_transmit
|tcp\_low\_rto
|tcp\_maxburst
|tcp\_mssdflt
|tcp\_nagle\_limit
|tcp\_nagleoverride
|tcp\_ndebug
|tcp\_newreno
|tcp\_nodelayack
|tcp\_recvspace
|tcp\_sendspace
|tcp\_tcpsecure
|tcp\_timewait
|tcp\_ttl
|tcprexmtthresh
|timer\_wheel\_tick
|udp\_bad\_port\_limit
|udp\_ephemeral\_high
|udp\_ephemeral\_low
|udp\_recvspace
|udp\_sendspace
|udp\_ttl
|udpcksum
|directed\_broadcast
|ie5\_old\_multicast\_mapping
|ip6\_defttl
|ip6\_prune
|ip6forwarding
|ip6srcrouteforward
|ip\_ifdelete\_notify
|ip\_nfrag
|ipforwarding
|ipfragttl
|ipignoreredirects
|ipqmaxlen
|ipsendredirects
|ipsrcrouteforward
|ipsrcrouterecv
|ipsrcroutesend
|lo\_perf
|maxnip6q
|multi\_homed
|ndogthreads
|nonlocsrcroute
|subnetsarelocal
|tn\_filter
|arpqsize
|arpt\_killc
|arptab\_bsiz
|arptab\_nb
|dgd\_packets\_lost
|dgd\_ping\_time
|dgd\_retry\_time
|ndp\_mmaxtries
|ndp\_umaxtries
|ndpqsize
|ndpt\_down
|ndpt\_keep
|ndpt\_probe
|ndpt\_reachable
|ndpt\_retrans
|passive\_dgd
|rfc1122addrchk
|lowthresh
|medthresh
|psebufcalls
|psecache
|psetimers
|strctlsz
|strmsgsz
|strthresh
|strturncnt
|bcastping
|dgd\_flush\_cached\_route
|icmp6\_errmsg\_rate
|icmpaddressmask
|ifsize
|igmpv2\_deliver
|llsleep\_timeout
|main\_if6
|main\_site6
|maxttl
|mpr\_policy
|pmtu\_default\_age
|pmtu\_expire
|pmtu\_rediscover\_interval
|route\_expire
|routerevalidate
|rtentry\_lock\_complex
|site6\_index
|tcp\_pmtu\_discover
|udp\_pmtu\_discover
|enforce\_default
|reboot\_notify\_cmd

#### aix_tunables::schedo
| Parameters
|------------
|affinity\_lim
|big\_tick\_size
|ded\_cpu\_donate\_thresh
|fixed\_pri\_global
|force\_grq
|maxspin
|pacefork
|proc\_disk\_stats
|sched\_d
|sched\_r
|tb\_balance\_s0
|tb\_balance\_s1
|tb\_threshold
|timeslice
|vpm\_fold\_policy
|vpm\_throughput\_core\_threshold
|vpm\_throughput\_mode
|vpm\_xvcpus
|enforce\_default
|reboot\_notify\_cmd

#### aix_tunables::vmo
| Parameters
|------------
|ame\_cpus\_per\_pool
|ame\_maxfree\_mem
|ame\_min\_ucpool\_size
|ame\_minfree\_mem
|ams\_loan\_policy
|enhanced\_affinity\_affin\_time
|enhanced\_affinity\_vmpool\_limit
|esid\_allocator
|force\_relalias\_lite
|kernel\_heap\_psize
|lgpg\_regions
|lgpg\_size
|low\_ps\_handling
|maxfree
|maxpin\_p
|memplace\_data
|memplace\_mapped\_file
|memplace\_shm\_anonymous
|memplace\_shm\_named
|memplace\_stack
|memplace\_text
|memplace\_unmapped\_file
|minfree
|minperm\_p
|nokilluid
|npskill
|npswarn
|num\_locks\_per\_semid
|relalias\_percentage
|scrub
|thrpgio\_inval
|thrpgio\_npages
|v\_pinshm
|vmm\_default\_pspa
|vmm\_klock\_mode
|wlm\_memlimit\_nonpg
|enforce\_default
|reboot\_notify\_cmd

#### aix\_tunables::disks::default
| Parameters
|------------
|configured\_disks
|algorithm
|hcheck\_cmd
|hcheck\_mode
|max\_transfer
|queue\_depth
|reserve\_policy
|reboot\_notify\_cmd

Configures all disk devices not specified individually in 
aix\_tunables::disks::config (see below) with the given values.

#### aix\_tunables::disks::config
| Parameters
|------------
|disk\_resources

Uses *create_resources* to configure disks individually.
It should preferably be specified using hiera, but you can pass them as 
a hash of hashes otherwise.

## Limitations

Tested on AIX 6.1 and Puppet 3.7.3.
Restricted tunables are not currently supported.

## Development

If you have any interest in contributing or using this module, please let me know!
(See my email below!)

## Authors

Bruno Gomes <blfgomes@gmail.com>

## Contributors

Many thanks to:
* Daniel Meireles <danielbmeireles@gmail.com>, an ex-IBM employee, for helping me out with his AIX knowledge!

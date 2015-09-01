Puppet::Type.newtype(:no) do

  newparam(:name, :namevar => true) do
    desc "Name of tunable"
  end

  newproperty(:bsd_loglevel) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:fasttimo) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:init_high_wat) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:nbc_limit) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:nbc_max_cache) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:nbc_min_cache) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:nbc_ofile_hashsz) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:nbc_pseg) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:nbc_pseg_limit) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:ndd_event_name) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:ndd_event_tracing) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:net_buf_size) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:net_buf_type) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:net_malloc_frag_mask) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:netm_page_promote) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:sb_max) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:send_file_duration) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:sockthresh) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:sodebug) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:sodebug_env) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:somaxconn) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tcp_inpcb_hashtab_siz) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tcptr_enable) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:udp_inpcb_hashtab_siz) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:use_sndbufpool) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:clean_partial_conns) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:delayack) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:delayackports) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:hstcp) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:limited_ss) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:rfc1323) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:rfc2414) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:rto_high) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:rto_length) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:rto_limit) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:rto_low) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:sack) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tcp_bad_port_limit) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tcp_cwnd_modified) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tcp_ecn) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tcp_ephemeral_high) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tcp_ephemeral_low) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tcp_fastlo) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tcp_fastlo_crosswpar) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tcp_finwait2) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tcp_icmpsecure) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tcp_init_window) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tcp_keepcnt) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tcp_keepidle) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tcp_keepinit) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tcp_keepintvl) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tcp_limited_transmit) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tcp_low_rto) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tcp_maxburst) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tcp_mssdflt) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tcp_nagle_limit) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tcp_nagleoverride) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tcp_ndebug) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tcp_newreno) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tcp_nodelayack) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tcp_recvspace) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tcp_sendspace) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tcp_tcpsecure) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tcp_timewait) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tcp_ttl) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tcprexmtthresh) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:timer_wheel_tick) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:udp_bad_port_limit) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:udp_ephemeral_high) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:udp_ephemeral_low) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:udp_recvspace) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:udp_sendspace) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:udp_ttl) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:udpcksum) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:directed_broadcast) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:ie5_old_multicast_mapping) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:ip6_defttl) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:ip6_prune) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:ip6forwarding) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:ip6srcrouteforward) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:ip_ifdelete_notify) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:ip_nfrag) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:ipforwarding) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:ipfragttl) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:ipignoreredirects) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:ipqmaxlen) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:ipsendredirects) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:ipsrcrouteforward) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:ipsrcrouterecv) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:ipsrcroutesend) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:lo_perf) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:maxnip6q) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:multi_homed) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:ndogthreads) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:nonlocsrcroute) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:subnetsarelocal) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tn_filter) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:arpqsize) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:arpt_killc) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:arptab_bsiz) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:arptab_nb) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:dgd_packets_lost) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:dgd_ping_time) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:dgd_retry_time) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:ndp_mmaxtries) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:ndp_umaxtries) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:ndpqsize) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:ndpt_down) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:ndpt_keep) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:ndpt_probe) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:ndpt_reachable) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:ndpt_retrans) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:passive_dgd) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:rfc1122addrchk) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:lowthresh) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:medthresh) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:psebufcalls) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:psecache) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:psetimers) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:strctlsz) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:strmsgsz) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:strthresh) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:strturncnt) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:bcastping) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:dgd_flush_cached_route) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:icmp6_errmsg_rate) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:icmpaddressmask) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:ifsize) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:igmpv2_deliver) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:llsleep_timeout) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:main_if6) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:main_site6) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:maxttl) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:mpr_policy) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:pmtu_default_age) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:pmtu_expire) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:pmtu_rediscover_interval) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:route_expire) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:routerevalidate) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:rtentry_lock_complex) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:site6_index) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:tcp_pmtu_discover) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newproperty(:udp_pmtu_discover) do
    munge do |value|
      @resource.munge_default(name, value)
    end
  end

  newparam(:enforce_default) do
    defaultto false
    newvalues(:true, :false)
  end

  validate do
    if self[:enforce_default] == :true then
      self.class.properties.each do |property|
        if self[property.name].nil? then
          self[property.name] = 'default'
        end
      end
    end
  end

  def munge_default(name, value)
    if value == 'default' then
      instances_hash = provider.class.instances_hash
      # Do not try to set 'n/a' values to default, since they are
      # unsupported.
      if instances_hash[name.to_s].current == 'n/a' then
        'n/a'
      else
        instances_hash[name.to_s].default
      end
    else
      value
    end
  end

end

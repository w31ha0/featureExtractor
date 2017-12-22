.class public interface abstract Lorg/linphone/core/LinphoneCore;
.super Ljava/lang/Object;
.source "LinphoneCore.java"


# virtual methods
.method public abstract acceptCall(Lorg/linphone/core/LinphoneCall;)V
.end method

.method public abstract acceptCallUpdate(Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCallParams;)V
.end method

.method public abstract acceptCallWithParams(Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCallParams;)V
.end method

.method public abstract acceptEarlyMedia(Lorg/linphone/core/LinphoneCall;)Z
.end method

.method public abstract acceptEarlyMediaWithParams(Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCallParams;)Z
.end method

.method public abstract addAllToConference()V
.end method

.method public abstract addAuthInfo(Lorg/linphone/core/LinphoneAuthInfo;)V
.end method

.method public abstract addFriend(Lorg/linphone/core/LinphoneFriend;)V
.end method

.method public abstract addFriendList(Lorg/linphone/core/LinphoneFriendList;)V
.end method

.method public abstract addListener(Lorg/linphone/core/LinphoneCoreListener;)V
.end method

.method public abstract addProxyConfig(Lorg/linphone/core/LinphoneProxyConfig;)V
.end method

.method public abstract addToConference(Lorg/linphone/core/LinphoneCall;)V
.end method

.method public abstract adjustSoftwareVolume(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract audioMulticastEnabled()Z
.end method

.method public abstract chatEnabled()Z
.end method

.method public abstract clearAuthInfos()V
.end method

.method public abstract clearCallLogs()V
.end method

.method public abstract clearProxyConfigs()V
.end method

.method public abstract createCallParams(Lorg/linphone/core/LinphoneCall;)Lorg/linphone/core/LinphoneCallParams;
.end method

.method public abstract createConference(Lorg/linphone/core/LinphoneConferenceParams;)Lorg/linphone/core/LinphoneConference;
.end method

.method public abstract createFriend()Lorg/linphone/core/LinphoneFriend;
.end method

.method public abstract createFriendWithAddress(Ljava/lang/String;)Lorg/linphone/core/LinphoneFriend;
.end method

.method public abstract createInfoMessage()Lorg/linphone/core/LinphoneInfoMessage;
.end method

.method public abstract createLinphoneFriendList()Lorg/linphone/core/LinphoneFriendList;
.end method

.method public abstract createLocalPlayer(Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;)Lorg/linphone/core/LinphonePlayer;
.end method

.method public abstract createNatPolicy()Lorg/linphone/core/LinphoneNatPolicy;
.end method

.method public abstract createProxyConfig()Lorg/linphone/core/LinphoneProxyConfig;
.end method

.method public abstract createProxyConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/linphone/core/LinphoneProxyConfig;
.end method

.method public abstract createPublish(Lorg/linphone/core/LinphoneAddress;Ljava/lang/String;I)Lorg/linphone/core/LinphoneEvent;
.end method

.method public abstract createSubscribe(Lorg/linphone/core/LinphoneAddress;Ljava/lang/String;I)Lorg/linphone/core/LinphoneEvent;
.end method

.method public abstract declineCall(Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/Reason;)V
.end method

.method public abstract deferCallUpdate(Lorg/linphone/core/LinphoneCall;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract disableChat(Lorg/linphone/core/Reason;)V
.end method

.method public abstract dnsSrvEnabled()Z
.end method

.method public abstract downloadOpenH264Enabled()Z
.end method

.method public abstract enableAdaptiveRateControl(Z)V
.end method

.method public abstract enableAudioMulticast(Z)V
.end method

.method public abstract enableChat()V
.end method

.method public abstract enableDnsSrv(Z)V
.end method

.method public abstract enableDownloadOpenH264(Z)V
.end method

.method public abstract enableEchoCancellation(Z)V
.end method

.method public abstract enableEchoLimiter(Z)V
.end method

.method public abstract enableIpv6(Z)V
.end method

.method public abstract enableKeepAlive(Z)V
.end method

.method public abstract enablePayloadType(Lorg/linphone/core/PayloadType;Z)V
.end method

.method public abstract enableSdp200Ack(Z)V
.end method

.method public abstract enableSpeaker(Z)V
.end method

.method public abstract enableVideo(ZZ)V
.end method

.method public abstract enableVideoMulticast(Z)V
.end method

.method public abstract enterConference()Z
.end method

.method public abstract findAuthInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/linphone/core/LinphoneAuthInfo;
.end method

.method public abstract findCallFromUri(Ljava/lang/String;)Lorg/linphone/core/LinphoneCall;
.end method

.method public abstract findFriendByAddress(Ljava/lang/String;)Lorg/linphone/core/LinphoneFriend;
.end method

.method public abstract findPayloadType(Ljava/lang/String;)Lorg/linphone/core/PayloadType;
.end method

.method public abstract findPayloadType(Ljava/lang/String;I)Lorg/linphone/core/PayloadType;
.end method

.method public abstract findPayloadType(Ljava/lang/String;II)Lorg/linphone/core/PayloadType;
.end method

.method public abstract getAdaptiveRateAlgorithm()Lorg/linphone/core/LinphoneCore$AdaptiveRateAlgorithm;
.end method

.method public abstract getAudioCodecs()[Lorg/linphone/core/PayloadType;
.end method

.method public abstract getAudioDscp()I
.end method

.method public abstract getAudioMulticastAddr()Ljava/lang/String;
.end method

.method public abstract getAudioMulticastTtl()I
.end method

.method public abstract getAuthInfosList()[Lorg/linphone/core/LinphoneAuthInfo;
.end method

.method public abstract getCallLogs()[Lorg/linphone/core/LinphoneCallLog;
.end method

.method public abstract getCalls()[Lorg/linphone/core/LinphoneCall;
.end method

.method public abstract getCallsNb()I
.end method

.method public abstract getChatRoom(Lorg/linphone/core/LinphoneAddress;)Lorg/linphone/core/LinphoneChatRoom;
.end method

.method public abstract getChatRooms()[Lorg/linphone/core/LinphoneChatRoom;
.end method

.method public abstract getConference()Lorg/linphone/core/LinphoneConference;
.end method

.method public abstract getConferenceSize()I
.end method

.method public abstract getConfig()Lorg/linphone/core/LpConfig;
.end method

.method public abstract getCurrentCall()Lorg/linphone/core/LinphoneCall;
.end method

.method public abstract getDefaultProxyConfig()Lorg/linphone/core/LinphoneProxyConfig;
.end method

.method public abstract getDownloadBandwidth()I
.end method

.method public abstract getFileTransferServer()Ljava/lang/String;
.end method

.method public abstract getFirewallPolicy()Lorg/linphone/core/LinphoneCore$FirewallPolicy;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getFriendList()[Lorg/linphone/core/LinphoneFriend;
.end method

.method public abstract getFriendLists()[Lorg/linphone/core/LinphoneFriendList;
.end method

.method public abstract getGlobalState()Lorg/linphone/core/LinphoneCore$GlobalState;
.end method

.method public abstract getHttpProxyHost()Ljava/lang/String;
.end method

.method public abstract getHttpProxyPort()I
.end method

.method public abstract getLastOutgoingCallLog()Lorg/linphone/core/LinphoneCallLog;
.end method

.method public abstract getLimeEncryption()Lorg/linphone/core/LinphoneCore$LinphoneLimeState;
.end method

.method public abstract getMSFactory()Lorg/linphone/mediastream/Factory;
.end method

.method public abstract getMaxCalls()I
.end method

.method public abstract getMediaEncryption()Lorg/linphone/core/LinphoneCore$MediaEncryption;
.end method

.method public abstract getMissedCallsCount()I
.end method

.method public abstract getMtu()I
.end method

.method public abstract getNatPolicy()Lorg/linphone/core/LinphoneNatPolicy;
.end method

.method public abstract getNortpTimeout()I
.end method

.method public abstract getOrCreateChatRoom(Ljava/lang/String;)Lorg/linphone/core/LinphoneChatRoom;
.end method

.method public abstract getPayloadTypeBitrate(Lorg/linphone/core/PayloadType;)I
.end method

.method public abstract getPayloadTypeNumber(Lorg/linphone/core/PayloadType;)I
.end method

.method public abstract getPlayLevel()I
.end method

.method public abstract getPlaybackGain()F
.end method

.method public abstract getPreferredFramerate()F
.end method

.method public abstract getPreferredVideoSize()Lorg/linphone/core/VideoSize;
.end method

.method public abstract getPresenceInfo()Lorg/linphone/core/OnlineStatus;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPresenceModel()Lorg/linphone/core/PresenceModel;
.end method

.method public abstract getPrimaryContact()Ljava/lang/String;
.end method

.method public abstract getPrimaryContactDisplayName()Ljava/lang/String;
.end method

.method public abstract getPrimaryContactUsername()Ljava/lang/String;
.end method

.method public abstract getProvisioningUri()Ljava/lang/String;
.end method

.method public abstract getProxyConfigList()[Lorg/linphone/core/LinphoneProxyConfig;
.end method

.method public abstract getRemoteAddress()Lorg/linphone/core/LinphoneAddress;
.end method

.method public abstract getRemoteRingbackTone()Ljava/lang/String;
.end method

.method public abstract getRing()Ljava/lang/String;
.end method

.method public abstract getSignalingTransportPorts()Lorg/linphone/core/LinphoneCore$Transports;
.end method

.method public abstract getSipDscp()I
.end method

.method public abstract getSipTransportTimeout()I
.end method

.method public abstract getStunServer()Ljava/lang/String;
.end method

.method public abstract getSupportedVideoSizes()[Ljava/lang/String;
.end method

.method public abstract getTlsCertificate()Ljava/lang/String;
.end method

.method public abstract getTlsCertificatePath()Ljava/lang/String;
.end method

.method public abstract getTlsKey()Ljava/lang/String;
.end method

.method public abstract getTlsKeyPath()Ljava/lang/String;
.end method

.method public abstract getUploadBandwidth()I
.end method

.method public abstract getUpnpExternalIpaddress()Ljava/lang/String;
.end method

.method public abstract getUpnpState()Lorg/linphone/core/LinphoneCore$UpnpState;
.end method

.method public abstract getUseRfc2833ForDtmfs()Z
.end method

.method public abstract getUseSipInfoForDtmfs()Z
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract getVideoAutoAcceptPolicy()Z
.end method

.method public abstract getVideoAutoInitiatePolicy()Z
.end method

.method public abstract getVideoCodecs()[Lorg/linphone/core/PayloadType;
.end method

.method public abstract getVideoDevice()I
.end method

.method public abstract getVideoDscp()I
.end method

.method public abstract getVideoMulticastAddr()Ljava/lang/String;
.end method

.method public abstract getVideoMulticastTtl()I
.end method

.method public abstract getVideoPreset()Ljava/lang/String;
.end method

.method public abstract hasBuiltInEchoCanceler()Z
.end method

.method public abstract hasCrappyOpenGL()Z
.end method

.method public abstract interpretUrl(Ljava/lang/String;)Lorg/linphone/core/LinphoneAddress;
.end method

.method public abstract invite(Ljava/lang/String;)Lorg/linphone/core/LinphoneCall;
.end method

.method public abstract invite(Lorg/linphone/core/LinphoneAddress;)Lorg/linphone/core/LinphoneCall;
.end method

.method public abstract inviteAddressWithParams(Lorg/linphone/core/LinphoneAddress;Lorg/linphone/core/LinphoneCallParams;)Lorg/linphone/core/LinphoneCall;
.end method

.method public abstract isAdaptiveRateControlEnabled()Z
.end method

.method public abstract isEchoCancellationEnabled()Z
.end method

.method public abstract isEchoLimiterEnabled()Z
.end method

.method public abstract isInComingInvitePending()Z
.end method

.method public abstract isInConference()Z
.end method

.method public abstract isIncall()Z
.end method

.method public abstract isIpv6Enabled()Z
.end method

.method public abstract isKeepAliveEnabled()Z
.end method

.method public abstract isLimeEncryptionAvailable()Z
.end method

.method public abstract isMediaEncryptionMandatory()Z
.end method

.method public abstract isMicMuted()Z
.end method

.method public abstract isMyself(Ljava/lang/String;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isNetworkReachable()Z
.end method

.method public abstract isPayloadTypeEnabled(Lorg/linphone/core/PayloadType;)Z
.end method

.method public abstract isSdp200AckEnabled()Z
.end method

.method public abstract isSpeakerEnabled()Z
.end method

.method public abstract isTunnelAvailable()Z
.end method

.method public abstract isVCardSupported()Z
.end method

.method public abstract isVideoEnabled()Z
.end method

.method public abstract isVideoSupported()Z
.end method

.method public abstract iterate()V
.end method

.method public abstract leaveConference()V
.end method

.method public abstract mediaEncryptionSupported(Lorg/linphone/core/LinphoneCore$MediaEncryption;)Z
.end method

.method public abstract migrateCallLogs()V
.end method

.method public abstract migrateToMultiTransport()I
.end method

.method public abstract muteMic(Z)V
.end method

.method public abstract needsEchoCalibration()Z
.end method

.method public abstract pauseAllCalls()Z
.end method

.method public abstract pauseCall(Lorg/linphone/core/LinphoneCall;)Z
.end method

.method public abstract payloadTypeIsVbr(Lorg/linphone/core/PayloadType;)Z
.end method

.method public abstract playDtmf(CI)V
.end method

.method public abstract publish(Lorg/linphone/core/LinphoneAddress;Ljava/lang/String;ILorg/linphone/core/LinphoneContent;)Lorg/linphone/core/LinphoneEvent;
.end method

.method public abstract refreshRegisters()V
.end method

.method public abstract reloadMsPlugins(Ljava/lang/String;)V
.end method

.method public abstract reloadSoundDevices()V
.end method

.method public abstract removeAuthInfo(Lorg/linphone/core/LinphoneAuthInfo;)V
.end method

.method public abstract removeCallLog(Lorg/linphone/core/LinphoneCallLog;)V
.end method

.method public abstract removeFriend(Lorg/linphone/core/LinphoneFriend;)V
.end method

.method public abstract removeFriendList(Lorg/linphone/core/LinphoneFriendList;)V
.end method

.method public abstract removeFromConference(Lorg/linphone/core/LinphoneCall;)V
.end method

.method public abstract removeListener(Lorg/linphone/core/LinphoneCoreListener;)V
.end method

.method public abstract removeProxyConfig(Lorg/linphone/core/LinphoneProxyConfig;)V
.end method

.method public abstract resetLogCollection()V
.end method

.method public abstract resetMissedCallsCount()V
.end method

.method public abstract resumeCall(Lorg/linphone/core/LinphoneCall;)Z
.end method

.method public abstract sendDtmf(C)V
.end method

.method public abstract sendDtmfs(Ljava/lang/String;)V
.end method

.method public abstract setAdaptiveRateAlgorithm(Lorg/linphone/core/LinphoneCore$AdaptiveRateAlgorithm;)V
.end method

.method public abstract setAudioCodecs([Lorg/linphone/core/PayloadType;)V
.end method

.method public abstract setAudioDscp(I)V
.end method

.method public abstract setAudioJittcomp(I)V
.end method

.method public abstract setAudioMulticastAddr(Ljava/lang/String;)V
.end method

.method public abstract setAudioMulticastTtl(I)V
.end method

.method public abstract setAudioPort(I)V
.end method

.method public abstract setAudioPortRange(II)V
.end method

.method public abstract setCallErrorTone(Lorg/linphone/core/Reason;Ljava/lang/String;)V
.end method

.method public abstract setCallLogsDatabasePath(Ljava/lang/String;)V
.end method

.method public abstract setChatDatabasePath(Ljava/lang/String;)V
.end method

.method public abstract setContext(Ljava/lang/Object;)V
.end method

.method public abstract setCpuCount(I)V
.end method

.method public abstract setDefaultProxyConfig(Lorg/linphone/core/LinphoneProxyConfig;)V
.end method

.method public abstract setDefaultSoundDevices()V
.end method

.method public abstract setDeviceRotation(I)V
.end method

.method public abstract setDnsServers([Ljava/lang/String;)V
.end method

.method public abstract setDownloadBandwidth(I)V
.end method

.method public abstract setDownloadPtime(I)V
.end method

.method public abstract setFileTransferServer(Ljava/lang/String;)V
.end method

.method public abstract setFirewallPolicy(Lorg/linphone/core/LinphoneCore$FirewallPolicy;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setFriendsDatabasePath(Ljava/lang/String;)V
.end method

.method public abstract setHttpProxyHost(Ljava/lang/String;)V
.end method

.method public abstract setHttpProxyPort(I)V
.end method

.method public abstract setInCallTimeout(I)V
.end method

.method public abstract setIncomingTimeout(I)V
.end method

.method public abstract setLimeEncryption(Lorg/linphone/core/LinphoneCore$LinphoneLimeState;)V
.end method

.method public abstract setMaxCalls(I)V
.end method

.method public abstract setMediaEncryption(Lorg/linphone/core/LinphoneCore$MediaEncryption;)V
.end method

.method public abstract setMediaEncryptionMandatory(Z)V
.end method

.method public abstract setMediaNetworkReachable(Z)V
.end method

.method public abstract setMicrophoneGain(F)V
.end method

.method public abstract setMtu(I)V
.end method

.method public abstract setNatPolicy(Lorg/linphone/core/LinphoneNatPolicy;)V
.end method

.method public abstract setNetworkReachable(Z)V
.end method

.method public abstract setNortpTimeout(I)V
.end method

.method public abstract setPayloadTypeBitrate(Lorg/linphone/core/PayloadType;I)V
.end method

.method public abstract setPayloadTypeNumber(Lorg/linphone/core/PayloadType;I)V
.end method

.method public abstract setPlayFile(Ljava/lang/String;)V
.end method

.method public abstract setPlayLevel(I)V
.end method

.method public abstract setPlaybackGain(F)V
.end method

.method public abstract setPreferredFramerate(F)V
.end method

.method public abstract setPreferredVideoSize(Lorg/linphone/core/VideoSize;)V
.end method

.method public abstract setPreferredVideoSizeByName(Ljava/lang/String;)V
.end method

.method public abstract setPresenceInfo(ILjava/lang/String;Lorg/linphone/core/OnlineStatus;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setPresenceModel(Lorg/linphone/core/PresenceModel;)V
.end method

.method public abstract setPreviewWindow(Ljava/lang/Object;)V
.end method

.method public abstract setPrimaryContact(Ljava/lang/String;)V
.end method

.method public abstract setPrimaryContact(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setProvisioningUri(Ljava/lang/String;)V
.end method

.method public abstract setRemoteRingbackTone(Ljava/lang/String;)V
.end method

.method public abstract setRing(Ljava/lang/String;)V
.end method

.method public abstract setRingback(Ljava/lang/String;)V
.end method

.method public abstract setRootCA(Ljava/lang/String;)V
.end method

.method public abstract setRootCAData(Ljava/lang/String;)V
.end method

.method public abstract setSignalingTransportPorts(Lorg/linphone/core/LinphoneCore$Transports;)V
.end method

.method public abstract setSipDscp(I)V
.end method

.method public abstract setSipNetworkReachable(Z)V
.end method

.method public abstract setSipTransportTimeout(I)V
.end method

.method public abstract setStaticPicture(Ljava/lang/String;)V
.end method

.method public abstract setStunServer(Ljava/lang/String;)V
.end method

.method public abstract setTlsCertificate(Ljava/lang/String;)V
.end method

.method public abstract setTlsCertificatePath(Ljava/lang/String;)V
.end method

.method public abstract setTlsKey(Ljava/lang/String;)V
.end method

.method public abstract setTlsKeyPath(Ljava/lang/String;)V
.end method

.method public abstract setTone(Lorg/linphone/core/ToneID;Ljava/lang/String;)V
.end method

.method public abstract setUploadBandwidth(I)V
.end method

.method public abstract setUploadPtime(I)V
.end method

.method public abstract setUseRfc2833ForDtmfs(Z)V
.end method

.method public abstract setUseSipInfoForDtmfs(Z)V
.end method

.method public abstract setUserAgent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setUserCertificatesPath(Ljava/lang/String;)V
.end method

.method public abstract setVerifyServerCN(Z)V
.end method

.method public abstract setVerifyServerCertificates(Z)V
.end method

.method public abstract setVideoCodecs([Lorg/linphone/core/PayloadType;)V
.end method

.method public abstract setVideoDevice(I)V
.end method

.method public abstract setVideoDscp(I)V
.end method

.method public abstract setVideoJittcomp(I)V
.end method

.method public abstract setVideoMulticastAddr(Ljava/lang/String;)V
.end method

.method public abstract setVideoMulticastTtl(I)V
.end method

.method public abstract setVideoPolicy(ZZ)V
.end method

.method public abstract setVideoPort(I)V
.end method

.method public abstract setVideoPortRange(II)V
.end method

.method public abstract setVideoPreset(Ljava/lang/String;)V
.end method

.method public abstract setVideoWindow(Ljava/lang/Object;)V
.end method

.method public abstract setZrtpSecretsCache(Ljava/lang/String;)V
.end method

.method public abstract soundResourcesLocked()Z
.end method

.method public abstract startConferenceRecording(Ljava/lang/String;)V
.end method

.method public abstract startEchoCalibration(Lorg/linphone/core/LinphoneCoreListener;)V
.end method

.method public abstract startEchoTester(I)I
.end method

.method public abstract startReferedCall(Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCallParams;)Lorg/linphone/core/LinphoneCall;
.end method

.method public abstract stopConferenceRecording()V
.end method

.method public abstract stopDtmf()V
.end method

.method public abstract stopEchoTester()I
.end method

.method public abstract stopRinging()V
.end method

.method public abstract subscribe(Lorg/linphone/core/LinphoneAddress;Ljava/lang/String;ILorg/linphone/core/LinphoneContent;)Lorg/linphone/core/LinphoneEvent;
.end method

.method public abstract terminateAllCalls()V
.end method

.method public abstract terminateCall(Lorg/linphone/core/LinphoneCall;)V
.end method

.method public abstract terminateConference()V
.end method

.method public abstract transferCall(Lorg/linphone/core/LinphoneCall;Ljava/lang/String;)V
.end method

.method public abstract transferCallToAnother(Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCall;)V
.end method

.method public abstract tunnelAddServer(Lorg/linphone/core/TunnelConfig;)V
.end method

.method public abstract tunnelAddServerAndMirror(Ljava/lang/String;III)V
.end method

.method public abstract tunnelAutoDetect()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract tunnelCleanServers()V
.end method

.method public abstract tunnelDualModeEnabled()Z
.end method

.method public abstract tunnelEnable(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract tunnelEnableDualMode(Z)V
.end method

.method public abstract tunnelEnableSip(Z)V
.end method

.method public abstract tunnelGetMode()Lorg/linphone/core/LinphoneCore$TunnelMode;
.end method

.method public abstract tunnelGetServers()[Lorg/linphone/core/TunnelConfig;
.end method

.method public abstract tunnelSetHttpProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract tunnelSetMode(Lorg/linphone/core/LinphoneCore$TunnelMode;)V
.end method

.method public abstract tunnelSipEnabled()Z
.end method

.method public abstract updateCall(Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCallParams;)I
.end method

.method public abstract uploadLogCollection()V
.end method

.method public abstract upnpAvailable()Z
.end method

.method public abstract videoMulticastEnabled()Z
.end method

.class Lorg/linphone/core/LinphoneCoreImpl;
.super Ljava/lang/Object;
.source "LinphoneCoreImpl.java"

# interfaces
.implements Lorg/linphone/core/LinphoneCore;


# static fields
.field static FIND_PAYLOAD_IGNORE_CHANNELS:I

.field static FIND_PAYLOAD_IGNORE_RATE:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mListener:Lorg/linphone/core/LinphoneCoreListener;

.field private mSpeakerEnabled:Z

.field protected nativePtr:J

.field private openh264DownloadEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1067
    sput v0, Lorg/linphone/core/LinphoneCoreImpl;->FIND_PAYLOAD_IGNORE_RATE:I

    .line 1071
    sput v0, Lorg/linphone/core/LinphoneCoreImpl;->FIND_PAYLOAD_IGNORE_CHANNELS:I

    return-void
.end method

.method constructor <init>(Lorg/linphone/core/LinphoneCoreListener;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    .line 46
    iput-object v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->mContext:Landroid/content/Context;

    .line 47
    iput-object v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 48
    iput-boolean v3, p0, Lorg/linphone/core/LinphoneCoreImpl;->openh264DownloadEnabled:Z

    .line 49
    iput-boolean v3, p0, Lorg/linphone/core/LinphoneCoreImpl;->mSpeakerEnabled:Z

    .line 205
    iput-object p1, p0, Lorg/linphone/core/LinphoneCoreImpl;->mListener:Lorg/linphone/core/LinphoneCoreListener;

    .line 206
    invoke-direct {p0, p1, v2, v2, v2}, Lorg/linphone/core/LinphoneCoreImpl;->newLinphoneCore(Lorg/linphone/core/LinphoneCoreListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    .line 207
    return-void
.end method

.method constructor <init>(Lorg/linphone/core/LinphoneCoreListener;Ljava/io/File;Ljava/io/File;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    .line 46
    iput-object v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->mContext:Landroid/content/Context;

    .line 47
    iput-object v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 48
    iput-boolean v1, p0, Lorg/linphone/core/LinphoneCoreImpl;->openh264DownloadEnabled:Z

    .line 49
    iput-boolean v1, p0, Lorg/linphone/core/LinphoneCoreImpl;->mSpeakerEnabled:Z

    .line 199
    iput-object p1, p0, Lorg/linphone/core/LinphoneCoreImpl;->mListener:Lorg/linphone/core/LinphoneCoreListener;

    .line 200
    if-nez p2, :cond_0

    move-object v1, v0

    .line 201
    :goto_0
    if-nez p3, :cond_1

    .line 202
    :goto_1
    invoke-direct {p0, p1, v1, v0, p4}, Lorg/linphone/core/LinphoneCoreImpl;->newLinphoneCore(Lorg/linphone/core/LinphoneCoreListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    .line 203
    return-void

    .line 200
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {p3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private native acceptCall(JJ)V
.end method

.method private native acceptCallUpdate(JJJ)V
.end method

.method private native acceptCallWithParams(JJJ)V
.end method

.method private native acceptEarlyMedia(JJ)Z
.end method

.method private native acceptEarlyMediaWithParams(JJJ)Z
.end method

.method private native addAllToConference(J)V
.end method

.method private native addAuthInfo(JJ)V
.end method

.method private native addFriend(JJ)V
.end method

.method private native addFriendList(JJ)V
.end method

.method private native addListener(JLorg/linphone/core/LinphoneCoreListener;)V
.end method

.method private native addProxyConfig(Lorg/linphone/core/LinphoneProxyConfig;JJ)I
.end method

.method private native addToConference(JJ)V
.end method

.method private applyAudioHacks()V
    .locals 1

    .prologue
    .line 446
    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/Hacks;->needGalaxySAudioHack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    const/high16 v0, -0x3ef00000    # -9.0f

    invoke-virtual {p0, v0}, Lorg/linphone/core/LinphoneCoreImpl;->setMicrophoneGain(F)V

    .line 450
    :cond_0
    return-void
.end method

.method private native audioMulticastEnabled(J)Z
.end method

.method private native chatEnabled(J)Z
.end method

.method private native clearAuthInfos(J)V
.end method

.method private native clearCallLogs(J)V
.end method

.method private native clearProxyConfigs(J)V
.end method

.method private contextInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 214
    iget-object v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 215
    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Context of LinphoneCore has not been initialized, call setContext() after creating LinphoneCore."

    aput-object v2, v1, v0

    invoke-static {v1}, Lorg/linphone/mediastream/Log;->e([Ljava/lang/Object;)V

    .line 218
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private native createCallParams(JJ)J
.end method

.method private native createConference(JLorg/linphone/core/LinphoneConferenceParams;)Lorg/linphone/core/LinphoneConference;
.end method

.method private native createFriend(J)Ljava/lang/Object;
.end method

.method private native createFriendWithAddress(JLjava/lang/String;)Ljava/lang/Object;
.end method

.method private native createInfoMessage(J)J
.end method

.method private native createLocalPlayer(JLorg/linphone/mediastream/video/AndroidVideoWindowImpl;)J
.end method

.method private native createNatPolicy(J)Ljava/lang/Object;
.end method

.method private native createPublish(JJLjava/lang/String;I)Ljava/lang/Object;
.end method

.method private native createSubscribe(JJLjava/lang/String;I)Ljava/lang/Object;
.end method

.method private native declineCall(JJI)V
.end method

.method private native deferCallUpdate(JJ)V
.end method

.method private native delete(J)V
.end method

.method private native disableChat(JI)V
.end method

.method private native dnsSrvEnabled(J)Z
.end method

.method private native enableAdaptiveRateControl(JZ)V
.end method

.method private native enableAudioMulticast(JZ)V
.end method

.method private native enableChat(J)V
.end method

.method private native enableDnsSrv(JZ)V
.end method

.method private native enableEchoCancellation(JZ)V
.end method

.method private native enableEchoLimiter(JZ)V
.end method

.method private native enableIpv6(JZ)V
.end method

.method private native enableKeepAlive(JZ)V
.end method

.method private native enablePayloadType(JJZ)I
.end method

.method private native enableSdp200Ack(JZ)V
.end method

.method private native enableVideo(JZZ)V
.end method

.method private native enableVideoMulticast(JZ)V
.end method

.method private native enterConference(J)Z
.end method

.method private native findAuthInfos(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private native findCallFromUri(JLjava/lang/String;)Ljava/lang/Object;
.end method

.method private native findPayloadType(JLjava/lang/String;II)J
.end method

.method private native forceSpeakerState(JZ)V
.end method

.method private native getAdaptiveRateAlgorithm(J)Ljava/lang/String;
.end method

.method private native getAudioDscp(J)I
.end method

.method private native getAudioMulticastAddr(J)Ljava/lang/String;
.end method

.method private native getAudioMulticastTtl(J)I
.end method

.method private native getAuthInfosList(J)[J
.end method

.method private native getCall(JI)Ljava/lang/Object;
.end method

.method private native getCallLog(JI)J
.end method

.method private native getCallLogs(J)[J
.end method

.method private getCallParamsPtr(Lorg/linphone/core/LinphoneCallParams;)J
    .locals 2

    .prologue
    .line 836
    check-cast p1, Lorg/linphone/core/LinphoneCallParamsImpl;

    iget-wide v0, p1, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    return-wide v0
.end method

.method private getCallPtr(Lorg/linphone/core/LinphoneCall;)J
    .locals 2

    .prologue
    .line 832
    check-cast p1, Lorg/linphone/core/LinphoneCallImpl;

    iget-wide v0, p1, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    return-wide v0
.end method

.method private native getCallsNb(J)I
.end method

.method private native getChatRoom(JJ)Ljava/lang/Object;
.end method

.method private native getChatRooms(J)[Ljava/lang/Object;
.end method

.method private native getConference(J)Lorg/linphone/core/LinphoneConference;
.end method

.method private native getConferenceSize(J)I
.end method

.method private native getConfig(J)J
.end method

.method private native getCurrentCall(J)Ljava/lang/Object;
.end method

.method private native getDefaultProxyConfig(J)Lorg/linphone/core/LinphoneProxyConfig;
.end method

.method private native getDownloadBandwidth(J)I
.end method

.method private native getFileTransferServer(J)Ljava/lang/String;
.end method

.method private native getFirewallPolicy(J)I
.end method

.method private native getFriendByAddress(JLjava/lang/String;)Lorg/linphone/core/LinphoneFriend;
.end method

.method private native getFriendList(J)[Lorg/linphone/core/LinphoneFriend;
.end method

.method private native getFriendLists(J)[Lorg/linphone/core/LinphoneFriendList;
.end method

.method private native getGlobalState(J)I
.end method

.method private native getHttpProxyHost(J)Ljava/lang/String;
.end method

.method private native getHttpProxyPort(J)I
.end method

.method private native getLastOutgoingCallLog(J)J
.end method

.method private native getLimeEncryption(J)I
.end method

.method private native getMSFactory(J)Ljava/lang/Object;
.end method

.method private native getMaxCalls(J)I
.end method

.method private native getMediaEncryption(J)I
.end method

.method private native getMissedCallsCount(J)I
.end method

.method private native getMtu(J)I
.end method

.method private native getNatPolicy(J)Ljava/lang/Object;
.end method

.method private native getNortpTimeout(J)I
.end method

.method private native getNumberOfCallLogs(J)I
.end method

.method private native getOrCreateChatRoom(JLjava/lang/String;)Ljava/lang/Object;
.end method

.method private native getPayloadTypeBitrate(JJ)I
.end method

.method private native getPayloadTypeNumber(JJ)I
.end method

.method private native getPlaybackGain(J)F
.end method

.method private native getPreferredFramerate(J)F
.end method

.method private native getPreferredVideoSize(J)[I
.end method

.method private native getPresenceInfo(J)I
.end method

.method private native getPresenceModel(J)Ljava/lang/Object;
.end method

.method private native getPrimaryContact(J)Ljava/lang/String;
.end method

.method private native getPrimaryContactDisplayName(J)Ljava/lang/String;
.end method

.method private native getPrimaryContactUsername(J)Ljava/lang/String;
.end method

.method private native getProvisioningUri(J)Ljava/lang/String;
.end method

.method private native getProxyConfigList(J)[Lorg/linphone/core/LinphoneProxyConfig;
.end method

.method private native getRemoteAddress(J)J
.end method

.method private native getRemoteRingbackTone(J)Ljava/lang/String;
.end method

.method private native getRing(J)Ljava/lang/String;
.end method

.method private native getSignalingTransportPort(JI)I
.end method

.method private native getSipDscp(J)I
.end method

.method private native getSipTransportTimeout(J)I
.end method

.method private native getStunServer(J)Ljava/lang/String;
.end method

.method private native getTlsCertificate(J)Ljava/lang/String;
.end method

.method private native getTlsCertificatePath(J)Ljava/lang/String;
.end method

.method private native getTlsKey(J)Ljava/lang/String;
.end method

.method private native getTlsKeyPath(J)Ljava/lang/String;
.end method

.method private native getUploadBandwidth(J)I
.end method

.method private native getUpnpExternalIpaddress(J)Ljava/lang/String;
.end method

.method private native getUpnpState(J)I
.end method

.method private native getUseRfc2833ForDtmfs(J)Z
.end method

.method private native getUseSipInfoForDtmfs(J)Z
.end method

.method private native getVersion(J)Ljava/lang/String;
.end method

.method private native getVideoAutoAcceptPolicy(J)Z
.end method

.method private native getVideoAutoInitiatePolicy(J)Z
.end method

.method private native getVideoDevice(J)I
.end method

.method private native getVideoDscp(J)I
.end method

.method private native getVideoMulticastAddr(J)Ljava/lang/String;
.end method

.method private native getVideoMulticastTtl(J)I
.end method

.method private native getVideoPreset(J)Ljava/lang/String;
.end method

.method private native hasBuiltInEchoCanceler(J)Z
.end method

.method private native hasCrappyOpenGL(J)Z
.end method

.method private native interpretUrl(JLjava/lang/String;)J
.end method

.method private native invite(JLjava/lang/String;)Ljava/lang/Object;
.end method

.method private native inviteAddress(JJ)Ljava/lang/Object;
.end method

.method private native inviteAddressWithParams(JJJ)Ljava/lang/Object;
.end method

.method private native isAdaptiveRateControlEnabled(J)Z
.end method

.method private native isEchoCancellationEnabled(J)Z
.end method

.method private native isEchoLimiterEnabled(J)Z
.end method

.method private native isInCall(J)Z
.end method

.method private native isInComingInvitePending(J)Z
.end method

.method private native isInConference(J)Z
.end method

.method private native isIpv6Enabled(J)Z
.end method

.method private native isKeepAliveEnabled(J)Z
.end method

.method private native isLimeEncryptionAvailable(J)Z
.end method

.method private native isMediaEncryptionMandatory(J)Z
.end method

.method private native isMicMuted(J)Z
.end method

.method private native isNetworkStateReachable(J)Z
.end method

.method private native isPayloadTypeEnabled(JJ)Z
.end method

.method private native isSdp200AckEnabled(J)Z
.end method

.method private native isVCardSupported(J)Z
.end method

.method private isValid()V
    .locals 4

    .prologue
    .line 346
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "object already destroyed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_0
    return-void
.end method

.method private native isVideoEnabled(J)Z
.end method

.method private native isVideoSupported(J)Z
.end method

.method private native iterate(J)V
.end method

.method private native leaveConference(J)V
.end method

.method private native listAudioPayloadTypes(J)[J
.end method

.method private native listSupportedVideoResolutions(J)[Ljava/lang/String;
.end method

.method private native listVideoPayloadTypes(J)[J
.end method

.method private native mediaEncryptionSupported(JI)Z
.end method

.method private native migrateCallLogs(J)V
.end method

.method private native migrateToMultiTransport(J)I
.end method

.method private native muteMic(JZ)V
.end method

.method private native needsEchoCalibration(J)Z
.end method

.method private native newLinphoneCore(Lorg/linphone/core/LinphoneCoreListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)J
.end method

.method private native pauseAllCalls(J)I
.end method

.method private native pauseCall(JJ)I
.end method

.method private native payloadTypeIsVbr(JJ)Z
.end method

.method private native playDtmf(JCI)V
.end method

.method private native publish(JJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/Object;
.end method

.method private native refreshRegisters(J)V
.end method

.method private native reloadMsPlugins(JLjava/lang/String;)V
.end method

.method private native reloadSoundDevices(J)V
.end method

.method private native removeAuthInfo(JJ)V
.end method

.method private native removeCallLog(JJ)V
.end method

.method private native removeFriend(JJ)V
.end method

.method private native removeFriendList(JJ)V
.end method

.method private native removeFromConference(JJ)V
.end method

.method private native removeListener(JLorg/linphone/core/LinphoneCoreListener;)V
.end method

.method private native removeProxyConfig(JJ)V
.end method

.method private native resetMissedCallsCount(J)V
.end method

.method private native resumeCall(JJ)I
.end method

.method private native sendDtmf(JC)V
.end method

.method private native sendDtmfs(JLjava/lang/String;)I
.end method

.method private native setAdaptiveRateAlgorithm(JLjava/lang/String;)V
.end method

.method private native setAndroidMulticastLock(JLjava/lang/Object;)V
.end method

.method private static native setAndroidPowerManager(Ljava/lang/Object;)V
.end method

.method private native setAndroidWifiLock(JLjava/lang/Object;)V
.end method

.method private native setAudioCodecs(J[J)V
.end method

.method private native setAudioDscp(JI)V
.end method

.method private native setAudioJittcomp(JI)V
.end method

.method private setAudioModeIncallForGalaxyS()V
    .locals 2

    .prologue
    .line 452
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->contextInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    :goto_0
    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0
.end method

.method private native setAudioMulticastAddr(JLjava/lang/String;)I
.end method

.method private native setAudioMulticastTtl(JI)I
.end method

.method private native setAudioPort(JI)V
.end method

.method private native setAudioPortRange(JII)V
.end method

.method private native setCallErrorTone(JILjava/lang/String;)V
.end method

.method private native setCallLogsDatabasePath(JLjava/lang/String;)V
.end method

.method private native setChatDatabasePath(JLjava/lang/String;)V
.end method

.method private native setCpuCountNative(JI)V
.end method

.method private native setDefaultProxyConfig(JJ)V
.end method

.method private native setDefaultSoundDevices(J)V
.end method

.method private native setDeviceRotation(JI)V
.end method

.method private native setDnsServers(J[Ljava/lang/String;)V
.end method

.method private native setDownloadBandwidth(JI)V
.end method

.method private native setDownloadPtime(JI)V
.end method

.method private native setFileTransferServer(JLjava/lang/String;)V
.end method

.method private native setFirewallPolicy(JI)V
.end method

.method private native setFriendsDatabasePath(JLjava/lang/String;)V
.end method

.method private native setHttpProxyHost(JLjava/lang/String;)V
.end method

.method private native setHttpProxyPort(JI)V
.end method

.method private native setInCallTimeout(JI)V
.end method

.method private native setIncomingTimeout(JI)V
.end method

.method private native setLimeEncryption(JI)V
.end method

.method private native setMaxCalls(JI)V
.end method

.method private native setMediaEncryption(JI)V
.end method

.method private native setMediaEncryptionMandatory(JZ)V
.end method

.method private native setMediaNetworkReachable(JZ)V
.end method

.method private native setMicrophoneGain(JF)V
.end method

.method private native setMtu(JI)V
.end method

.method private native setNatPolicy(JJ)V
.end method

.method private native setNetworkStateReachable(JZ)V
.end method

.method private native setNortpTimeout(JI)V
.end method

.method private native setPayloadTypeBitrate(JJI)V
.end method

.method private native setPayloadTypeNumber(JJI)V
.end method

.method private native setPlayFile(JLjava/lang/String;)V
.end method

.method private native setPlaybackGain(JF)V
.end method

.method private native setPreferredFramerate(JF)V
.end method

.method private native setPreferredVideoSize(JII)V
.end method

.method private native setPreferredVideoSizeByName(JLjava/lang/String;)V
.end method

.method private native setPresenceInfo(JILjava/lang/String;I)V
.end method

.method private native setPresenceModel(JJ)V
.end method

.method private native setPreviewWindowId(JLjava/lang/Object;)V
.end method

.method private native setPrimaryContact(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native setPrimaryContact2(JLjava/lang/String;)V
.end method

.method private native setProvisioningUri(JLjava/lang/String;)V
.end method

.method private native setRemoteRingbackTone(JLjava/lang/String;)V
.end method

.method private native setRing(JLjava/lang/String;)V
.end method

.method private native setRingback(JLjava/lang/String;)V
.end method

.method private native setRootCA(JLjava/lang/String;)V
.end method

.method private native setRootCAData(JLjava/lang/String;)V
.end method

.method private native setSignalingTransportPorts(JIII)V
.end method

.method private native setSipDscp(JI)V
.end method

.method private native setSipNetworkReachable(JZ)V
.end method

.method private native setSipTransportTimeout(JI)V
.end method

.method private native setStaticPicture(JLjava/lang/String;)V
.end method

.method private native setStunServer(JLjava/lang/String;)V
.end method

.method private native setTlsCertificate(JLjava/lang/String;)V
.end method

.method private native setTlsCertificatePath(JLjava/lang/String;)V
.end method

.method private native setTlsKey(JLjava/lang/String;)V
.end method

.method private native setTlsKeyPath(JLjava/lang/String;)V
.end method

.method private native setTone(JILjava/lang/String;)V
.end method

.method private native setUploadBandwidth(JI)V
.end method

.method private native setUploadPtime(JI)V
.end method

.method private native setUseRfc2833ForDtmfs(JZ)V
.end method

.method private native setUseSipInfoForDtmfs(JZ)V
.end method

.method private native setUserAgent(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native setUserCertificatesPath(JLjava/lang/String;)V
.end method

.method private native setVerifyServerCN(JZ)V
.end method

.method private native setVerifyServerCertificates(JZ)V
.end method

.method private native setVideoCodecs(J[J)V
.end method

.method private native setVideoDevice(JI)I
.end method

.method private native setVideoDscp(JI)V
.end method

.method private native setVideoJittcomp(JI)V
.end method

.method private native setVideoMulticastAddr(JLjava/lang/String;)I
.end method

.method private native setVideoMulticastTtl(JI)I
.end method

.method private native setVideoPolicy(JZZ)V
.end method

.method private native setVideoPort(JI)V
.end method

.method private native setVideoPortRange(JII)V
.end method

.method private native setVideoPreset(JLjava/lang/String;)V
.end method

.method private native setVideoWindowId(JLjava/lang/Object;)V
.end method

.method private native setZrtpSecretsCache(JLjava/lang/String;)V
.end method

.method private native soundResourcesLocked(J)Z
.end method

.method private native startConferenceRecording(JLjava/lang/String;)I
.end method

.method private native startEchoCalibration(JLjava/lang/Object;)I
.end method

.method private native startEchoTester(JI)I
.end method

.method private native startReferedCall(JJJ)Lorg/linphone/core/LinphoneCall;
.end method

.method private native stopConferenceRecording(J)I
.end method

.method private native stopDtmf(J)V
.end method

.method private native stopEchoTester(J)I
.end method

.method private native stopRinging(J)V
.end method

.method private native subscribe(JJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/Object;
.end method

.method private native terminateAllCalls(J)V
.end method

.method private native terminateCall(JJ)V
.end method

.method private native terminateConference(J)V
.end method

.method private native transferCall(JJLjava/lang/String;)I
.end method

.method private native transferCallToAnother(JJJ)I
.end method

.method private native tunnelAddServer(JJ)V
.end method

.method private native tunnelAddServerAndMirror(JLjava/lang/String;III)V
.end method

.method private native tunnelAutoDetect(J)V
.end method

.method private native tunnelCleanServers(J)V
.end method

.method private native tunnelDualModeEnabled(J)Z
.end method

.method private native tunnelEnable(JZ)V
.end method

.method private native tunnelEnableDualMode(JZ)V
.end method

.method private native tunnelEnableSip(JZ)V
.end method

.method private native tunnelGetMode(J)I
.end method

.method private final native tunnelGetServers(J)[Lorg/linphone/core/TunnelConfig;
.end method

.method private native tunnelSetHttpProxy(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native tunnelSetMode(JI)V
.end method

.method private native tunnelSipEnabled(J)Z
.end method

.method private native updateCall(JJJ)I
.end method

.method private native uploadLogCollection(J)V
.end method

.method private native upnpAvailable(J)Z
.end method

.method private native videoMulticastEnabled(J)Z
.end method


# virtual methods
.method public declared-synchronized acceptCall(Lorg/linphone/core/LinphoneCall;)V
    .locals 4

    .prologue
    .line 321
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 322
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneCallImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->acceptCall(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    monitor-exit p0

    return-void

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized acceptCallUpdate(Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCallParams;)V
    .locals 8

    .prologue
    .line 995
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, p1}, Lorg/linphone/core/LinphoneCoreImpl;->getCallPtr(Lorg/linphone/core/LinphoneCall;)J

    move-result-wide v4

    invoke-direct {p0, p2}, Lorg/linphone/core/LinphoneCoreImpl;->getCallParamsPtr(Lorg/linphone/core/LinphoneCallParams;)J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/linphone/core/LinphoneCoreImpl;->acceptCallUpdate(JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 996
    monitor-exit p0

    return-void

    .line 995
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized acceptCallWithParams(Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCallParams;)V
    .locals 8

    .prologue
    .line 988
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, p1}, Lorg/linphone/core/LinphoneCoreImpl;->getCallPtr(Lorg/linphone/core/LinphoneCall;)J

    move-result-wide v4

    invoke-direct {p0, p2}, Lorg/linphone/core/LinphoneCoreImpl;->getCallParamsPtr(Lorg/linphone/core/LinphoneCallParams;)J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/linphone/core/LinphoneCoreImpl;->acceptCallWithParams(JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 989
    monitor-exit p0

    return-void

    .line 988
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized acceptEarlyMedia(Lorg/linphone/core/LinphoneCall;)Z
    .locals 4

    .prologue
    .line 1357
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, p1}, Lorg/linphone/core/LinphoneCoreImpl;->getCallPtr(Lorg/linphone/core/LinphoneCall;)J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->acceptEarlyMedia(JJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized acceptEarlyMediaWithParams(Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCallParams;)Z
    .locals 8

    .prologue
    .line 1364
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    check-cast p2, Lorg/linphone/core/LinphoneCallParamsImpl;

    iget-wide v6, p2, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    .line 1365
    :goto_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, p1}, Lorg/linphone/core/LinphoneCoreImpl;->getCallPtr(Lorg/linphone/core/LinphoneCall;)J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/linphone/core/LinphoneCoreImpl;->acceptEarlyMediaWithParams(JJJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 1364
    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addAllToConference()V
    .locals 2

    .prologue
    .line 818
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->addAllToConference(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    monitor-exit p0

    return-void

    .line 818
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addAuthInfo(Lorg/linphone/core/LinphoneAuthInfo;)V
    .locals 4

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 246
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneAuthInfoImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneAuthInfoImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->addAuthInfo(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    monitor-exit p0

    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addFriend(Lorg/linphone/core/LinphoneFriend;)V
    .locals 4

    .prologue
    .line 485
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneFriendImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneFriendImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->addFriend(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    monitor-exit p0

    return-void

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addFriendList(Lorg/linphone/core/LinphoneFriendList;)V
    .locals 4

    .prologue
    .line 495
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneFriendListImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneFriendListImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->addFriendList(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    monitor-exit p0

    return-void

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addListener(Lorg/linphone/core/LinphoneCoreListener;)V
    .locals 2

    .prologue
    .line 1503
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->addListener(JLorg/linphone/core/LinphoneCoreListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1504
    monitor-exit p0

    return-void

    .line 1503
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addProxyConfig(Lorg/linphone/core/LinphoneProxyConfig;)V
    .locals 8

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 280
    iget-wide v4, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    move-object v0, p1

    check-cast v0, Lorg/linphone/core/LinphoneProxyConfigImpl;

    move-object v2, v0

    iget-wide v6, v2, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/linphone/core/LinphoneCoreImpl;->addProxyConfig(Lorg/linphone/core/LinphoneProxyConfig;JJ)I

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    new-instance v2, Lorg/linphone/core/LinphoneCoreException;

    const-string/jumbo v3, "bad proxy config"

    invoke-direct {v2, v3}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 283
    :cond_0
    :try_start_1
    check-cast p1, Lorg/linphone/core/LinphoneProxyConfigImpl;

    iput-object p0, p1, Lorg/linphone/core/LinphoneProxyConfigImpl;->mCore:Lorg/linphone/core/LinphoneCoreImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addToConference(Lorg/linphone/core/LinphoneCall;)V
    .locals 4

    .prologue
    .line 823
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, p1}, Lorg/linphone/core/LinphoneCoreImpl;->getCallPtr(Lorg/linphone/core/LinphoneCall;)J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->addToConference(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    monitor-exit p0

    return-void

    .line 823
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized adjustSoftwareVolume(I)V
    .locals 0

    .prologue
    .line 732
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public audioMulticastEnabled()Z
    .locals 2

    .prologue
    .line 1596
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->audioMulticastEnabled(J)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized chatEnabled()Z
    .locals 2

    .prologue
    .line 1420
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->chatEnabled(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearAuthInfos()V
    .locals 2

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 293
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->clearAuthInfos(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    monitor-exit p0

    return-void

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearCallLogs()V
    .locals 2

    .prologue
    .line 389
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->clearCallLogs(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    monitor-exit p0

    return-void

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearProxyConfigs()V
    .locals 2

    .prologue
    .line 296
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 297
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->clearProxyConfigs(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createCallParams(Lorg/linphone/core/LinphoneCall;)Lorg/linphone/core/LinphoneCallParams;
    .locals 4

    .prologue
    .line 1635
    const-wide/16 v0, 0x0

    .line 1636
    if-eqz p1, :cond_0

    check-cast p1, Lorg/linphone/core/LinphoneCallImpl;

    iget-wide v0, p1, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    .line 1637
    :cond_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->createCallParams(JJ)J

    move-result-wide v0

    .line 1638
    new-instance v2, Lorg/linphone/core/LinphoneCallParamsImpl;

    invoke-direct {v2, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;-><init>(J)V

    return-object v2
.end method

.method public declared-synchronized createConference(Lorg/linphone/core/LinphoneConferenceParams;)Lorg/linphone/core/LinphoneConference;
    .locals 2

    .prologue
    .line 793
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->createConference(JLorg/linphone/core/LinphoneConferenceParams;)Lorg/linphone/core/LinphoneConference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createFriend()Lorg/linphone/core/LinphoneFriend;
    .locals 2

    .prologue
    .line 1825
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->createFriend(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneFriend;

    return-object v0
.end method

.method public createFriendWithAddress(Ljava/lang/String;)Lorg/linphone/core/LinphoneFriend;
    .locals 2

    .prologue
    .line 1829
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->createFriendWithAddress(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneFriend;

    return-object v0
.end method

.method public declared-synchronized createInfoMessage()Lorg/linphone/core/LinphoneInfoMessage;
    .locals 4

    .prologue
    .line 1253
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/linphone/core/LinphoneInfoMessageImpl;

    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->createInfoMessage(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/linphone/core/LinphoneInfoMessageImpl;-><init>(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createLinphoneFriendList()Lorg/linphone/core/LinphoneFriendList;
    .locals 1

    .prologue
    .line 490
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/linphone/core/LinphoneFriendListImpl;

    invoke-direct {v0, p0}, Lorg/linphone/core/LinphoneFriendListImpl;-><init>(Lorg/linphone/core/LinphoneCoreImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createLocalPlayer(Lorg/linphone/mediastream/video/AndroidVideoWindowImpl;)Lorg/linphone/core/LinphonePlayer;
    .locals 4

    .prologue
    .line 1492
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->createLocalPlayer(JLorg/linphone/mediastream/video/AndroidVideoWindowImpl;)J

    move-result-wide v2

    .line 1493
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 1494
    new-instance v0, Lorg/linphone/core/LinphonePlayerImpl;

    invoke-direct {v0, v2, v3}, Lorg/linphone/core/LinphonePlayerImpl;-><init>(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1496
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1492
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createNatPolicy()Lorg/linphone/core/LinphoneNatPolicy;
    .locals 2

    .prologue
    .line 561
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->createNatPolicy(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneNatPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createProxyConfig()Lorg/linphone/core/LinphoneProxyConfig;
    .locals 1

    .prologue
    .line 1369
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/linphone/core/LinphoneProxyConfigImpl;

    invoke-direct {v0, p0}, Lorg/linphone/core/LinphoneProxyConfigImpl;-><init>(Lorg/linphone/core/LinphoneCoreImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createProxyConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/linphone/core/LinphoneProxyConfig;
    .locals 6

    .prologue
    .line 1373
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1375
    :try_start_1
    new-instance v0, Lorg/linphone/core/LinphoneProxyConfigImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/linphone/core/LinphoneProxyConfigImpl;-><init>(Lorg/linphone/core/LinphoneCoreImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/linphone/core/LinphoneCoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1377
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1376
    :catch_0
    move-exception v0

    .line 1377
    const/4 v0, 0x0

    goto :goto_0

    .line 1373
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createPublish(Lorg/linphone/core/LinphoneAddress;Ljava/lang/String;I)Lorg/linphone/core/LinphoneEvent;
    .locals 8

    .prologue
    .line 1283
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneAddressImpl;

    iget-wide v4, p1, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    move-object v1, p0

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/linphone/core/LinphoneCoreImpl;->createPublish(JJLjava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createSubscribe(Lorg/linphone/core/LinphoneAddress;Ljava/lang/String;I)Lorg/linphone/core/LinphoneEvent;
    .locals 8

    .prologue
    .line 1277
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneAddressImpl;

    iget-wide v4, p1, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    move-object v1, p0

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/linphone/core/LinphoneCoreImpl;->createSubscribe(JJLjava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized declineCall(Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/Reason;)V
    .locals 7

    .prologue
    .line 1182
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneCallImpl;

    iget-wide v4, p1, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    iget v6, p2, Lorg/linphone/core/Reason;->mValue:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/linphone/core/LinphoneCoreImpl;->declineCall(JJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1183
    monitor-exit p0

    return-void

    .line 1182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deferCallUpdate(Lorg/linphone/core/LinphoneCall;)V
    .locals 4

    .prologue
    .line 1002
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, p1}, Lorg/linphone/core/LinphoneCoreImpl;->getCallPtr(Lorg/linphone/core/LinphoneCall;)J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->deferCallUpdate(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1003
    monitor-exit p0

    return-void

    .line 1002
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized destroy()V
    .locals 2

    .prologue
    .line 340
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lorg/linphone/core/LinphoneCoreImpl;->setAndroidPowerManager(Ljava/lang/Object;)V

    .line 341
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->delete(J)V

    .line 342
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit p0

    return-void

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disableChat(Lorg/linphone/core/Reason;)V
    .locals 3

    .prologue
    .line 1410
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    iget v2, p1, Lorg/linphone/core/Reason;->mValue:I

    invoke-direct {p0, v0, v1, v2}, Lorg/linphone/core/LinphoneCoreImpl;->disableChat(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1411
    monitor-exit p0

    return-void

    .line 1410
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dnsSrvEnabled()Z
    .locals 2

    .prologue
    .line 1618
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->dnsSrvEnabled(J)Z

    move-result v0

    return v0
.end method

.method public downloadOpenH264Enabled()Z
    .locals 1

    .prologue
    .line 1821
    iget-boolean v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->openh264DownloadEnabled:Z

    return v0
.end method

.method public declared-synchronized enableAdaptiveRateControl(Z)V
    .locals 2

    .prologue
    .line 1451
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->enableAdaptiveRateControl(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1453
    monitor-exit p0

    return-void

    .line 1451
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableAudioMulticast(Z)V
    .locals 2

    .prologue
    .line 1591
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->enableAudioMulticast(JZ)V

    .line 1592
    return-void
.end method

.method public declared-synchronized enableChat()V
    .locals 2

    .prologue
    .line 1415
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->enableChat(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1416
    monitor-exit p0

    return-void

    .line 1415
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableDnsSrv(Z)V
    .locals 2

    .prologue
    .line 1613
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->enableDnsSrv(JZ)V

    .line 1614
    return-void
.end method

.method public enableDownloadOpenH264(Z)V
    .locals 0

    .prologue
    .line 1817
    iput-boolean p1, p0, Lorg/linphone/core/LinphoneCoreImpl;->openh264DownloadEnabled:Z

    .line 1818
    return-void
.end method

.method public declared-synchronized enableEchoCancellation(Z)V
    .locals 2

    .prologue
    .line 422
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 423
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->enableEchoCancellation(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    monitor-exit p0

    return-void

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enableEchoLimiter(Z)V
    .locals 2

    .prologue
    .line 755
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->enableEchoLimiter(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 756
    monitor-exit p0

    return-void

    .line 755
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enableIpv6(Z)V
    .locals 2

    .prologue
    .line 725
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->enableIpv6(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    monitor-exit p0

    return-void

    .line 725
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enableKeepAlive(Z)V
    .locals 2

    .prologue
    .line 693
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->enableKeepAlive(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    monitor-exit p0

    return-void

    .line 693
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enablePayloadType(Lorg/linphone/core/PayloadType;Z)V
    .locals 9

    .prologue
    .line 405
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 406
    iget-wide v4, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    move-object v0, p1

    check-cast v0, Lorg/linphone/core/PayloadTypeImpl;

    move-object v2, v0

    iget-wide v6, v2, Lorg/linphone/core/PayloadTypeImpl;->nativePtr:J

    move-object v3, p0

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lorg/linphone/core/LinphoneCoreImpl;->enablePayloadType(JJZ)I

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    new-instance v2, Lorg/linphone/core/LinphoneCoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cannot enable payload type ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 410
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized enableSdp200Ack(Z)V
    .locals 2

    .prologue
    .line 1396
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->enableSdp200Ack(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1397
    monitor-exit p0

    return-void

    .line 1396
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableSpeaker(Z)V
    .locals 3

    .prologue
    .line 463
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneCoreImpl;->getCurrentCall()Lorg/linphone/core/LinphoneCall;

    move-result-object v0

    .line 464
    iput-boolean p1, p0, Lorg/linphone/core/LinphoneCoreImpl;->mSpeakerEnabled:Z

    .line 465
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->applyAudioHacks()V

    .line 466
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/linphone/core/LinphoneCall;->getState()Lorg/linphone/core/LinphoneCall$State;

    move-result-object v0

    sget-object v1, Lorg/linphone/core/LinphoneCall$State;->StreamsRunning:Lorg/linphone/core/LinphoneCall$State;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/Hacks;->needGalaxySAudioHack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "Hack to have speaker="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, " while on call"

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/linphone/mediastream/Log;->d([Ljava/lang/Object;)V

    .line 468
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->forceSpeakerState(JZ)V

    .line 472
    :goto_0
    return-void

    .line 470
    :cond_0
    invoke-virtual {p0, p1}, Lorg/linphone/core/LinphoneCoreImpl;->routeAudioToSpeakerHelper(Z)V

    goto :goto_0
.end method

.method public declared-synchronized enableVideo(ZZ)V
    .locals 2

    .prologue
    .line 543
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/LinphoneCoreImpl;->enableVideo(JZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    monitor-exit p0

    return-void

    .line 543
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableVideoMulticast(Z)V
    .locals 2

    .prologue
    .line 1602
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->enableVideoMulticast(JZ)V

    .line 1603
    return-void
.end method

.method public declared-synchronized enterConference()Z
    .locals 2

    .prologue
    .line 775
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->enterConference(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 210
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/linphone/core/LinphoneCoreImpl;->destroy()V

    .line 211
    :cond_0
    return-void
.end method

.method public declared-synchronized findAuthInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/linphone/core/LinphoneAuthInfo;
    .locals 7

    .prologue
    .line 1324
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/linphone/core/LinphoneCoreImpl;->findAuthInfos(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 1325
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 1326
    const/4 v0, 0x0

    .line 1328
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lorg/linphone/core/LinphoneAuthInfoImpl;

    invoke-direct {v0, v2, v3}, Lorg/linphone/core/LinphoneAuthInfoImpl;-><init>(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized findCallFromUri(Ljava/lang/String;)Lorg/linphone/core/LinphoneCall;
    .locals 2

    .prologue
    .line 852
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->findCallFromUri(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized findFriendByAddress(Ljava/lang/String;)Lorg/linphone/core/LinphoneFriend;
    .locals 2

    .prologue
    .line 1086
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->getFriendByAddress(JLjava/lang/String;)Lorg/linphone/core/LinphoneFriend;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized findPayloadType(Ljava/lang/String;)Lorg/linphone/core/PayloadType;
    .locals 1

    .prologue
    .line 1212
    monitor-enter p0

    :try_start_0
    sget v0, Lorg/linphone/core/LinphoneCoreImpl;->FIND_PAYLOAD_IGNORE_RATE:I

    invoke-virtual {p0, p1, v0}, Lorg/linphone/core/LinphoneCoreImpl;->findPayloadType(Ljava/lang/String;I)Lorg/linphone/core/PayloadType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized findPayloadType(Ljava/lang/String;I)Lorg/linphone/core/PayloadType;
    .locals 1

    .prologue
    .line 1074
    monitor-enter p0

    :try_start_0
    sget v0, Lorg/linphone/core/LinphoneCoreImpl;->FIND_PAYLOAD_IGNORE_CHANNELS:I

    invoke-virtual {p0, p1, p2, v0}, Lorg/linphone/core/LinphoneCoreImpl;->findPayloadType(Ljava/lang/String;II)Lorg/linphone/core/PayloadType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized findPayloadType(Ljava/lang/String;II)Lorg/linphone/core/PayloadType;
    .locals 7

    .prologue
    .line 395
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 396
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/linphone/core/LinphoneCoreImpl;->findPayloadType(JLjava/lang/String;II)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 397
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 398
    const/4 v0, 0x0

    .line 400
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lorg/linphone/core/PayloadTypeImpl;

    invoke-direct {v0, v2, v3}, Lorg/linphone/core/PayloadTypeImpl;-><init>(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAdaptiveRateAlgorithm()Lorg/linphone/core/LinphoneCore$AdaptiveRateAlgorithm;
    .locals 2

    .prologue
    .line 1459
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getAdaptiveRateAlgorithm(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneCore$AdaptiveRateAlgorithm;->fromString(Ljava/lang/String;)Lorg/linphone/core/LinphoneCore$AdaptiveRateAlgorithm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAudioCodecs()[Lorg/linphone/core/PayloadType;
    .locals 6

    .prologue
    .line 670
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->listAudioPayloadTypes(J)[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 671
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 679
    :cond_0
    monitor-exit p0

    return-object v0

    .line 673
    :cond_1
    :try_start_1
    array-length v0, v2

    new-array v0, v0, [Lorg/linphone/core/PayloadType;

    .line 675
    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 676
    new-instance v3, Lorg/linphone/core/PayloadTypeImpl;

    aget-wide v4, v2, v1

    invoke-direct {v3, v4, v5}, Lorg/linphone/core/PayloadTypeImpl;-><init>(J)V

    aput-object v3, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 675
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 670
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAudioDscp()I
    .locals 2

    .prologue
    .line 1235
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getAudioDscp(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAudioMulticastAddr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1558
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getAudioMulticastAddr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioMulticastTtl()I
    .locals 2

    .prologue
    .line 1581
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getAudioMulticastTtl(J)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getAuthInfosList()[Lorg/linphone/core/LinphoneAuthInfo;
    .locals 6

    .prologue
    .line 1311
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getAuthInfosList(J)[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1312
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 1320
    :cond_0
    monitor-exit p0

    return-object v0

    .line 1314
    :cond_1
    :try_start_1
    array-length v0, v2

    new-array v0, v0, [Lorg/linphone/core/LinphoneAuthInfo;

    .line 1316
    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 1317
    new-instance v3, Lorg/linphone/core/LinphoneAuthInfoImpl;

    aget-wide v4, v2, v1

    invoke-direct {v3, v4, v5}, Lorg/linphone/core/LinphoneAuthInfoImpl;-><init>(J)V

    aput-object v3, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1316
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1311
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCallLogs()[Lorg/linphone/core/LinphoneCallLog;
    .locals 6

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getCallLogs(J)[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 326
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 332
    :cond_0
    monitor-exit p0

    return-object v0

    .line 327
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 328
    array-length v0, v2

    new-array v0, v0, [Lorg/linphone/core/LinphoneCallLog;

    .line 329
    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 330
    new-instance v3, Lorg/linphone/core/LinphoneCallLogImpl;

    aget-wide v4, v2, v1

    invoke-direct {v3, v4, v5}, Lorg/linphone/core/LinphoneCallLogImpl;-><init>(J)V

    aput-object v3, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCalls()[Lorg/linphone/core/LinphoneCall;
    .locals 6

    .prologue
    .line 809
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getCallsNb(J)I

    move-result v2

    .line 810
    new-array v3, v2, [Lorg/linphone/core/LinphoneCall;

    .line 811
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 812
    iget-wide v4, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v4, v5, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getCall(JI)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneCall;

    aput-object v0, v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 814
    :cond_0
    monitor-exit p0

    return-object v3

    .line 809
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCallsNb()I
    .locals 2

    .prologue
    .line 801
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getCallsNb(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getChatRoom(Lorg/linphone/core/LinphoneAddress;)Lorg/linphone/core/LinphoneChatRoom;
    .locals 4

    .prologue
    .line 530
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneAddressImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->getChatRoom(JJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneChatRoom;

    check-cast v0, Lorg/linphone/core/LinphoneChatRoom;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getChatRooms()[Lorg/linphone/core/LinphoneChatRoom;
    .locals 4

    .prologue
    .line 1299
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getChatRooms(J)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1300
    if-nez v3, :cond_0

    const/4 v0, 0x0

    .line 1308
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1302
    :cond_0
    :try_start_1
    array-length v0, v3

    new-array v1, v0, [Lorg/linphone/core/LinphoneChatRoom;

    .line 1304
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    array-length v0, v1

    if-ge v2, v0, :cond_1

    .line 1305
    aget-object v0, v3, v2

    check-cast v0, Lorg/linphone/core/LinphoneChatRoom;

    check-cast v0, Lorg/linphone/core/LinphoneChatRoom;

    aput-object v0, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1304
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 1308
    goto :goto_0

    .line 1299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConference()Lorg/linphone/core/LinphoneConference;
    .locals 2

    .prologue
    .line 797
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getConference(J)Lorg/linphone/core/LinphoneConference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConferenceSize()I
    .locals 2

    .prologue
    .line 789
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getConferenceSize(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConfig()Lorg/linphone/core/LpConfig;
    .locals 3

    .prologue
    .line 1161
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getConfig(J)J

    move-result-wide v0

    .line 1162
    new-instance v2, Lorg/linphone/core/LpConfigImpl;

    invoke-direct {v2, v0, v1}, Lorg/linphone/core/LpConfigImpl;-><init>(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 1161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public declared-synchronized getCurrentCall()Lorg/linphone/core/LinphoneCall;
    .locals 2

    .prologue
    .line 432
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 433
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getCurrentCall(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultProxyConfig()Lorg/linphone/core/LinphoneProxyConfig;
    .locals 2

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 256
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getDefaultProxyConfig(J)Lorg/linphone/core/LinphoneProxyConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDownloadBandwidth()I
    .locals 2

    .prologue
    .line 604
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getDownloadBandwidth(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFileTransferServer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1486
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getFileTransferServer(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFirewallPolicy()Lorg/linphone/core/LinphoneCore$FirewallPolicy;
    .locals 2

    .prologue
    .line 555
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getFirewallPolicy(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneCore$FirewallPolicy;->fromInt(I)Lorg/linphone/core/LinphoneCore$FirewallPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFriendList()[Lorg/linphone/core/LinphoneFriend;
    .locals 2

    .prologue
    .line 503
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getFriendList(J)[Lorg/linphone/core/LinphoneFriend;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFriendLists()[Lorg/linphone/core/LinphoneFriendList;
    .locals 2

    .prologue
    .line 508
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getFriendLists(J)[Lorg/linphone/core/LinphoneFriendList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getGlobalState()Lorg/linphone/core/LinphoneCore$GlobalState;
    .locals 2

    .prologue
    .line 1653
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getGlobalState(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneCore$GlobalState;->fromInt(I)Lorg/linphone/core/LinphoneCore$GlobalState;

    move-result-object v0

    return-object v0
.end method

.method public getHttpProxyHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1670
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getHttpProxyHost(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpProxyPort()I
    .locals 2

    .prologue
    .line 1676
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getHttpProxyPort(J)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getLastOutgoingCallLog()Lorg/linphone/core/LinphoneCallLog;
    .locals 3

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 336
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getLastOutgoingCallLog(J)J

    move-result-wide v0

    .line 337
    new-instance v2, Lorg/linphone/core/LinphoneCallLogImpl;

    invoke-direct {v2, v0, v1}, Lorg/linphone/core/LinphoneCallLogImpl;-><init>(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLimeEncryption()Lorg/linphone/core/LinphoneCore$LinphoneLimeState;
    .locals 2

    .prologue
    .line 1753
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getLimeEncryption(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneCore$LinphoneLimeState;->fromInt(I)Lorg/linphone/core/LinphoneCore$LinphoneLimeState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMSFactory()Lorg/linphone/mediastream/Factory;
    .locals 2

    .prologue
    .line 1715
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getMSFactory(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/mediastream/Factory;

    return-object v0
.end method

.method public declared-synchronized getMaxCalls()I
    .locals 2

    .prologue
    .line 870
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getMaxCalls(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMediaEncryption()Lorg/linphone/core/LinphoneCore$MediaEncryption;
    .locals 2

    .prologue
    .line 856
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getMediaEncryption(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneCore$MediaEncryption;->fromInt(I)Lorg/linphone/core/LinphoneCore$MediaEncryption;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMissedCallsCount()I
    .locals 2

    .prologue
    .line 1036
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getMissedCallsCount(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMtu()I
    .locals 2

    .prologue
    .line 1392
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getMtu(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNatPolicy()Lorg/linphone/core/LinphoneNatPolicy;
    .locals 2

    .prologue
    .line 567
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getNatPolicy(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneNatPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNortpTimeout()I
    .locals 2

    .prologue
    .line 1698
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getNortpTimeout(J)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getOrCreateChatRoom(Ljava/lang/String;)Lorg/linphone/core/LinphoneChatRoom;
    .locals 2

    .prologue
    .line 527
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->getOrCreateChatRoom(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneChatRoom;

    check-cast v0, Lorg/linphone/core/LinphoneChatRoom;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPayloadTypeBitrate(Lorg/linphone/core/PayloadType;)I
    .locals 4

    .prologue
    .line 1435
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/PayloadTypeImpl;

    iget-wide v2, p1, Lorg/linphone/core/PayloadTypeImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->getPayloadTypeBitrate(JJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPayloadTypeNumber(Lorg/linphone/core/PayloadType;)I
    .locals 4

    .prologue
    .line 1446
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/PayloadTypeImpl;

    iget-wide v2, p1, Lorg/linphone/core/PayloadTypeImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->getPayloadTypeNumber(JJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPlayLevel()I
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized getPlaybackGain()F
    .locals 2

    .prologue
    .line 358
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getPlaybackGain(J)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPreferredFramerate()F
    .locals 2

    .prologue
    .line 1539
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getPreferredFramerate(J)F

    move-result v0

    return v0
.end method

.method public declared-synchronized getPreferredVideoSize()Lorg/linphone/core/VideoSize;
    .locals 3

    .prologue
    .line 620
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getPreferredVideoSize(J)[I

    move-result-object v0

    .line 622
    new-instance v1, Lorg/linphone/core/VideoSize;

    invoke-direct {v1}, Lorg/linphone/core/VideoSize;-><init>()V

    .line 623
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Lorg/linphone/core/VideoSize;->width:I

    .line 624
    const/4 v2, 0x1

    aget v0, v0, v2

    iput v0, v1, Lorg/linphone/core/VideoSize;->height:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    monitor-exit p0

    return-object v1

    .line 620
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPresenceInfo()Lorg/linphone/core/OnlineStatus;
    .locals 2

    .prologue
    .line 518
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getPresenceInfo(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/OnlineStatus;->fromInt(I)Lorg/linphone/core/OnlineStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPresenceModel()Lorg/linphone/core/PresenceModel;
    .locals 2

    .prologue
    .line 524
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getPresenceModel(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/PresenceModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPrimaryContact()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1124
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getPrimaryContact(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPrimaryContactDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1136
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getPrimaryContactDisplayName(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPrimaryContactUsername()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1132
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getPrimaryContactUsername(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProvisioningUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1649
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getProvisioningUri(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getProxyConfigList()[Lorg/linphone/core/LinphoneProxyConfig;
    .locals 2

    .prologue
    .line 647
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getProxyConfigList(J)[Lorg/linphone/core/LinphoneProxyConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRemoteAddress()Lorg/linphone/core/LinphoneAddress;
    .locals 4

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 305
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getRemoteAddress(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 306
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 307
    const/4 v0, 0x0

    .line 309
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lorg/linphone/core/LinphoneAddressImpl;

    sget-object v1, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->FromConst:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    invoke-direct {v0, v2, v3, v1}, Lorg/linphone/core/LinphoneAddressImpl;-><init>(JLorg/linphone/core/LinphoneAddressImpl$WrapMode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRemoteRingbackTone()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1519
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getRemoteRingbackTone(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getRing()Ljava/lang/String;
    .locals 2

    .prologue
    .line 631
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getRing(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSignalingTransportPorts()Lorg/linphone/core/LinphoneCore$Transports;
    .locals 4

    .prologue
    .line 712
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/linphone/core/LinphoneCore$Transports;

    invoke-direct {v0}, Lorg/linphone/core/LinphoneCore$Transports;-><init>()V

    .line 713
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    const/4 v1, 0x0

    invoke-direct {p0, v2, v3, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getSignalingTransportPort(JI)I

    move-result v1

    iput v1, v0, Lorg/linphone/core/LinphoneCore$Transports;->udp:I

    .line 714
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    const/4 v1, 0x1

    invoke-direct {p0, v2, v3, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getSignalingTransportPort(JI)I

    move-result v1

    iput v1, v0, Lorg/linphone/core/LinphoneCore$Transports;->tcp:I

    .line 715
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    const/4 v1, 0x3

    invoke-direct {p0, v2, v3, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getSignalingTransportPort(JI)I

    move-result v1

    iput v1, v0, Lorg/linphone/core/LinphoneCore$Transports;->tls:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    monitor-exit p0

    return-object v0

    .line 712
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSipDscp()I
    .locals 2

    .prologue
    .line 1224
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getSipDscp(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSipTransportTimeout()I
    .locals 2

    .prologue
    .line 1687
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getSipTransportTimeout(J)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getStunServer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 570
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getStunServer(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSupportedVideoSizes()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1341
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->listSupportedVideoResolutions(J)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTlsCertificate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1759
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getTlsCertificate(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTlsCertificatePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1771
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getTlsCertificatePath(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTlsKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1765
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getTlsKey(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTlsKeyPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1777
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getTlsKeyPath(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getUploadBandwidth()I
    .locals 2

    .prologue
    .line 596
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getUploadBandwidth(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUpnpExternalIpaddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1197
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getUpnpExternalIpaddress(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUpnpState()Lorg/linphone/core/LinphoneCore$UpnpState;
    .locals 2

    .prologue
    .line 1192
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getUpnpState(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneCore$UpnpState;->fromInt(I)Lorg/linphone/core/LinphoneCore$UpnpState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUseRfc2833ForDtmfs()Z
    .locals 2

    .prologue
    .line 1156
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getUseRfc2833ForDtmfs(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUseSipInfoForDtmfs()Z
    .locals 2

    .prologue
    .line 1146
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getUseSipInfoForDtmfs(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1062
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getVersion(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getVideoAutoAcceptPolicy()Z
    .locals 2

    .prologue
    .line 1016
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getVideoAutoAcceptPolicy(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVideoAutoInitiatePolicy()Z
    .locals 2

    .prologue
    .line 1012
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getVideoAutoInitiatePolicy(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVideoCodecs()[Lorg/linphone/core/PayloadType;
    .locals 6

    .prologue
    .line 651
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->listVideoPayloadTypes(J)[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 652
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 660
    :cond_0
    monitor-exit p0

    return-object v0

    .line 654
    :cond_1
    :try_start_1
    array-length v0, v2

    new-array v0, v0, [Lorg/linphone/core/PayloadType;

    .line 656
    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 657
    new-instance v3, Lorg/linphone/core/PayloadTypeImpl;

    aget-wide v4, v2, v1

    invoke-direct {v3, v4, v5}, Lorg/linphone/core/PayloadTypeImpl;-><init>(J)V

    aput-object v3, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 656
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 651
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVideoDevice()I
    .locals 2

    .prologue
    .line 764
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getVideoDevice(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVideoDscp()I
    .locals 2

    .prologue
    .line 1247
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getVideoDscp(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVideoMulticastAddr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1563
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getVideoMulticastAddr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoMulticastTtl()I
    .locals 2

    .prologue
    .line 1586
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getVideoMulticastTtl(J)I

    move-result v0

    return v0
.end method

.method public getVideoPreset()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1630
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->getVideoPreset(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized hasBuiltInEchoCanceler()Z
    .locals 2

    .prologue
    .line 1172
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->hasBuiltInEchoCanceler(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasCrappyOpenGL()Z
    .locals 2

    .prologue
    .line 1177
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->hasCrappyOpenGL(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized interpretUrl(Ljava/lang/String;)Lorg/linphone/core/LinphoneAddress;
    .locals 4

    .prologue
    .line 365
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->interpretUrl(JLjava/lang/String;)J

    move-result-wide v0

    .line 366
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 367
    new-instance v2, Lorg/linphone/core/LinphoneAddressImpl;

    sget-object v3, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->FromNew:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    invoke-direct {v2, v0, v1, v3}, Lorg/linphone/core/LinphoneAddressImpl;-><init>(JLorg/linphone/core/LinphoneAddressImpl$WrapMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 369
    :cond_0
    :try_start_1
    new-instance v0, Lorg/linphone/core/LinphoneCoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot interpret ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invite(Ljava/lang/String;)Lorg/linphone/core/LinphoneCall;
    .locals 2

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 261
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->invite(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invite(Lorg/linphone/core/LinphoneAddress;)Lorg/linphone/core/LinphoneCall;
    .locals 6

    .prologue
    .line 373
    monitor-enter p0

    :try_start_0
    iget-wide v4, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    move-object v0, p1

    check-cast v0, Lorg/linphone/core/LinphoneAddressImpl;

    move-object v2, v0

    iget-wide v2, v2, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    invoke-direct {p0, v4, v5, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->inviteAddress(JJ)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/linphone/core/LinphoneCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    if-eqz v2, :cond_0

    .line 375
    monitor-exit p0

    return-object v2

    .line 377
    :cond_0
    :try_start_1
    new-instance v2, Lorg/linphone/core/LinphoneCoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to invite address "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/linphone/core/LinphoneAddress;->asString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized inviteAddressWithParams(Lorg/linphone/core/LinphoneAddress;Lorg/linphone/core/LinphoneCallParams;)Lorg/linphone/core/LinphoneCall;
    .locals 10

    .prologue
    .line 577
    monitor-enter p0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/linphone/core/LinphoneAddressImpl;

    move-object v2, v0

    iget-wide v6, v2, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    .line 578
    check-cast p2, Lorg/linphone/core/LinphoneCallParamsImpl;

    iget-wide v8, p2, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    .line 580
    iget-wide v4, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/linphone/core/LinphoneCoreImpl;->inviteAddressWithParams(JJJ)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/linphone/core/LinphoneCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    if-eqz v2, :cond_0

    .line 582
    monitor-exit p0

    return-object v2

    .line 584
    :cond_0
    :try_start_1
    new-instance v2, Lorg/linphone/core/LinphoneCoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to invite with params "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/linphone/core/LinphoneAddress;->asString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 577
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized isAdaptiveRateControlEnabled()Z
    .locals 2

    .prologue
    .line 1456
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->isAdaptiveRateControlEnabled(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEchoCancellationEnabled()Z
    .locals 2

    .prologue
    .line 426
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 427
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->isEchoCancellationEnabled(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEchoLimiterEnabled()Z
    .locals 2

    .prologue
    .line 892
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->isEchoLimiterEnabled(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInComingInvitePending()Z
    .locals 2

    .prologue
    .line 317
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 318
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->isInComingInvitePending(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInConference()Z
    .locals 2

    .prologue
    .line 780
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->isInConference(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isIncall()Z
    .locals 2

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 314
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->isInCall(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isIpv6Enabled()Z
    .locals 2

    .prologue
    .line 728
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->isIpv6Enabled(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isKeepAliveEnabled()Z
    .locals 2

    .prologue
    .line 697
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->isKeepAliveEnabled(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isLimeEncryptionAvailable()Z
    .locals 2

    .prologue
    .line 1743
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->isLimeEncryptionAvailable(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isMediaEncryptionMandatory()Z
    .locals 2

    .prologue
    .line 859
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->isMediaEncryptionMandatory(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isMicMuted()Z
    .locals 2

    .prologue
    .line 392
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->isMicMuted(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isMyself(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 874
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneCoreImpl;->getDefaultProxyConfig()Lorg/linphone/core/LinphoneProxyConfig;

    move-result-object v0

    .line 875
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 876
    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Lorg/linphone/core/LinphoneProxyConfig;->getIdentity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized isNetworkReachable()Z
    .locals 2

    .prologue
    .line 689
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->isNetworkStateReachable(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPayloadTypeEnabled(Lorg/linphone/core/PayloadType;)Z
    .locals 4

    .prologue
    .line 412
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 413
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/PayloadTypeImpl;

    iget-wide v2, p1, Lorg/linphone/core/PayloadTypeImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->isPayloadTypeEnabled(JJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSdp200AckEnabled()Z
    .locals 2

    .prologue
    .line 1400
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->isSdp200AckEnabled(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSpeakerEnabled()Z
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->mSpeakerEnabled:Z

    return v0
.end method

.method public native isTunnelAvailable()Z
.end method

.method public declared-synchronized isVCardSupported()Z
    .locals 2

    .prologue
    .line 552
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->isVCardSupported(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isVideoEnabled()Z
    .locals 2

    .prologue
    .line 546
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->isVideoEnabled(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isVideoSupported()Z
    .locals 2

    .prologue
    .line 549
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->isVideoSupported(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized iterate()V
    .locals 4

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 267
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->iterate(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :goto_0
    monitor-exit p0

    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    const/4 v1, 0x2

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Caught runtime exception:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lorg/linphone/mediastream/Log;->e([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized leaveConference()V
    .locals 2

    .prologue
    .line 770
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->leaveConference(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    monitor-exit p0

    return-void

    .line 770
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mediaEncryptionSupported(Lorg/linphone/core/LinphoneCore$MediaEncryption;)Z
    .locals 3

    .prologue
    .line 897
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    iget v2, p1, Lorg/linphone/core/LinphoneCore$MediaEncryption;->mValue:I

    invoke-direct {p0, v0, v1, v2}, Lorg/linphone/core/LinphoneCoreImpl;->mediaEncryptionSupported(JI)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized migrateCallLogs()V
    .locals 2

    .prologue
    .line 1351
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->migrateCallLogs(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1352
    monitor-exit p0

    return-void

    .line 1351
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized migrateToMultiTransport()I
    .locals 2

    .prologue
    .line 1346
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->migrateToMultiTransport(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized muteMic(Z)V
    .locals 2

    .prologue
    .line 361
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->muteMic(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    monitor-exit p0

    return-void

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized needsEchoCalibration()Z
    .locals 2

    .prologue
    .line 1167
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->needsEchoCalibration(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pauseAllCalls()Z
    .locals 2

    .prologue
    .line 741
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->pauseAllCalls(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pauseCall(Lorg/linphone/core/LinphoneCall;)Z
    .locals 4

    .prologue
    .line 735
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneCallImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->pauseCall(JJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized payloadTypeIsVbr(Lorg/linphone/core/PayloadType;)Z
    .locals 4

    .prologue
    .line 417
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 418
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/PayloadTypeImpl;

    iget-wide v2, p1, Lorg/linphone/core/PayloadTypeImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->payloadTypeIsVbr(JJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized playDtmf(CI)V
    .locals 2

    .prologue
    .line 477
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/LinphoneCoreImpl;->playDtmf(JCI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    monitor-exit p0

    return-void

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized publish(Lorg/linphone/core/LinphoneAddress;Ljava/lang/String;ILorg/linphone/core/LinphoneContent;)Lorg/linphone/core/LinphoneEvent;
    .locals 12

    .prologue
    .line 1268
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneAddressImpl;

    iget-wide v4, p1, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    if-eqz p4, :cond_0

    .line 1269
    invoke-interface/range {p4 .. p4}, Lorg/linphone/core/LinphoneContent;->getType()Ljava/lang/String;

    move-result-object v8

    :goto_0
    if-eqz p4, :cond_1

    invoke-interface/range {p4 .. p4}, Lorg/linphone/core/LinphoneContent;->getSubtype()Ljava/lang/String;

    move-result-object v9

    :goto_1
    if-eqz p4, :cond_2

    invoke-interface/range {p4 .. p4}, Lorg/linphone/core/LinphoneContent;->getData()[B

    move-result-object v10

    :goto_2
    if-eqz p4, :cond_3

    .line 1270
    invoke-interface/range {p4 .. p4}, Lorg/linphone/core/LinphoneContent;->getEncoding()Ljava/lang/String;

    move-result-object v11

    :goto_3
    move-object v1, p0

    move-object v6, p2

    move v7, p3

    .line 1268
    invoke-direct/range {v1 .. v11}, Lorg/linphone/core/LinphoneCoreImpl;->publish(JJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1269
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    .line 1270
    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    .line 1268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized refreshRegisters()V
    .locals 2

    .prologue
    .line 1057
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->refreshRegisters(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1058
    monitor-exit p0

    return-void

    .line 1057
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reloadMsPlugins(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1730
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->reloadMsPlugins(JLjava/lang/String;)V

    .line 1731
    return-void
.end method

.method public reloadSoundDevices()V
    .locals 2

    .prologue
    .line 1734
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->reloadSoundDevices(J)V

    .line 1735
    return-void
.end method

.method public declared-synchronized removeAuthInfo(Lorg/linphone/core/LinphoneAuthInfo;)V
    .locals 4

    .prologue
    .line 250
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 251
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneAuthInfoImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneAuthInfoImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->removeAuthInfo(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    monitor-exit p0

    return-void

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeCallLog(Lorg/linphone/core/LinphoneCallLog;)V
    .locals 4

    .prologue
    .line 1040
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneCallLogImpl;

    invoke-virtual {p1}, Lorg/linphone/core/LinphoneCallLogImpl;->getNativePtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->removeCallLog(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1041
    monitor-exit p0

    return-void

    .line 1040
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeFriend(Lorg/linphone/core/LinphoneFriend;)V
    .locals 4

    .prologue
    .line 1080
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-interface {p1}, Lorg/linphone/core/LinphoneFriend;->getNativePtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->removeFriend(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1081
    monitor-exit p0

    return-void

    .line 1080
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeFriendList(Lorg/linphone/core/LinphoneFriendList;)V
    .locals 4

    .prologue
    .line 499
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneFriendListImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneFriendListImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->removeFriendList(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    monitor-exit p0

    return-void

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeFromConference(Lorg/linphone/core/LinphoneCall;)V
    .locals 4

    .prologue
    .line 828
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, p1}, Lorg/linphone/core/LinphoneCoreImpl;->getCallPtr(Lorg/linphone/core/LinphoneCall;)J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->removeFromConference(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 829
    monitor-exit p0

    return-void

    .line 828
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListener(Lorg/linphone/core/LinphoneCoreListener;)V
    .locals 2

    .prologue
    .line 1509
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->removeListener(JLorg/linphone/core/LinphoneCoreListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1510
    monitor-exit p0

    return-void

    .line 1509
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeProxyConfig(Lorg/linphone/core/LinphoneProxyConfig;)V
    .locals 4

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 287
    if-eqz p1, :cond_0

    .line 288
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneProxyConfigImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->removeProxyConfig(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :cond_0
    monitor-exit p0

    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native resetLogCollection()V
.end method

.method public declared-synchronized resetMissedCallsCount()V
    .locals 2

    .prologue
    .line 1044
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->resetMissedCallsCount(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1045
    monitor-exit p0

    return-void

    .line 1044
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resumeCall(Lorg/linphone/core/LinphoneCall;)Z
    .locals 4

    .prologue
    .line 738
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneCallImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->resumeCall(JJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public routeAudioToSpeakerHelper(Z)V
    .locals 1

    .prologue
    .line 456
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->contextInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 457
    :cond_0
    invoke-static {}, Lorg/linphone/mediastream/video/capture/hwconf/Hacks;->needGalaxySAudioHack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->setAudioModeIncallForGalaxyS()V

    .line 459
    :cond_1
    iget-object v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0
.end method

.method public declared-synchronized sendDtmf(C)V
    .locals 2

    .prologue
    .line 386
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->sendDtmf(JC)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    monitor-exit p0

    return-void

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendDtmfs(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 382
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->sendDtmfs(JLjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    monitor-exit p0

    return-void

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAdaptiveRateAlgorithm(Lorg/linphone/core/LinphoneCore$AdaptiveRateAlgorithm;)V
    .locals 3

    .prologue
    .line 1462
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-virtual {p1}, Lorg/linphone/core/LinphoneCore$AdaptiveRateAlgorithm;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/linphone/core/LinphoneCoreImpl;->setAdaptiveRateAlgorithm(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1463
    monitor-exit p0

    return-void

    .line 1462
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAudioCodecs([Lorg/linphone/core/PayloadType;)V
    .locals 6

    .prologue
    .line 682
    monitor-enter p0

    :try_start_0
    array-length v0, p1

    new-array v2, v0, [J

    .line 683
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_0

    .line 684
    aget-object v0, p1, v1

    check-cast v0, Lorg/linphone/core/PayloadTypeImpl;

    iget-wide v4, v0, Lorg/linphone/core/PayloadTypeImpl;->nativePtr:J

    aput-wide v4, v2, v1

    .line 683
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 686
    :cond_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2}, Lorg/linphone/core/LinphoneCoreImpl;->setAudioCodecs(J[J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    monitor-exit p0

    return-void

    .line 682
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAudioDscp(I)V
    .locals 2

    .prologue
    .line 1229
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setAudioDscp(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1230
    monitor-exit p0

    return-void

    .line 1229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAudioJittcomp(I)V
    .locals 2

    .prologue
    .line 1469
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setAudioJittcomp(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1470
    monitor-exit p0

    return-void

    .line 1469
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAudioMulticastAddr(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1546
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setAudioMulticastAddr(JLjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1547
    new-instance v0, Lorg/linphone/core/LinphoneCoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad ip address ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1548
    :cond_0
    return-void
.end method

.method public setAudioMulticastTtl(I)V
    .locals 3

    .prologue
    .line 1568
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setAudioMulticastTtl(JI)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1569
    new-instance v0, Lorg/linphone/core/LinphoneCoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad ttl value ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1571
    :cond_0
    return-void
.end method

.method public declared-synchronized setAudioPort(I)V
    .locals 2

    .prologue
    .line 1090
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setAudioPort(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1091
    monitor-exit p0

    return-void

    .line 1090
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAudioPortRange(II)V
    .locals 2

    .prologue
    .line 1098
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/LinphoneCoreImpl;->setAudioPortRange(JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1099
    monitor-exit p0

    return-void

    .line 1098
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCallErrorTone(Lorg/linphone/core/Reason;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1382
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    iget v2, p1, Lorg/linphone/core/Reason;->mValue:I

    invoke-direct {p0, v0, v1, v2, p2}, Lorg/linphone/core/LinphoneCoreImpl;->setCallErrorTone(JILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1383
    monitor-exit p0

    return-void

    .line 1382
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCallLogsDatabasePath(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1291
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setCallLogsDatabasePath(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1292
    monitor-exit p0

    return-void

    .line 1291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setChatDatabasePath(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1287
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setChatDatabasePath(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1288
    monitor-exit p0

    return-void

    .line 1287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setContext(Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 221
    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lorg/linphone/core/LinphoneCoreImpl;->mContext:Landroid/content/Context;

    .line 222
    iget-object v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 223
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/linphone/core/LinphoneCoreImpl;->reloadMsPlugins(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 225
    iget-object v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneCoreImpl;->setAndroidPowerManager(Ljava/lang/Object;)V

    .line 226
    const/16 v0, 0xc

    invoke-static {v0}, Lorg/linphone/mediastream/Version;->sdkAboveOrEqual(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 228
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "linphonecore ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] wifi-lock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    .line 229
    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 230
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v2, v3, v0}, Lorg/linphone/core/LinphoneCoreImpl;->setAndroidWifiLock(JLjava/lang/Object;)V

    .line 232
    :cond_0
    const/16 v0, 0xe

    invoke-static {v0}, Lorg/linphone/mediastream/Version;->sdkAboveOrEqual(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "linphonecore ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] multicast-lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    .line 235
    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    .line 236
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v2, v3, v0}, Lorg/linphone/core/LinphoneCoreImpl;->setAndroidMulticastLock(JLjava/lang/Object;)V

    .line 238
    :cond_1
    return-void
.end method

.method public declared-synchronized setCpuCount(I)V
    .locals 2

    .prologue
    .line 1032
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setCpuCountNative(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1033
    monitor-exit p0

    return-void

    .line 1032
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultProxyConfig(Lorg/linphone/core/LinphoneProxyConfig;)V
    .locals 4

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 275
    if-eqz p1, :cond_0

    check-cast p1, Lorg/linphone/core/LinphoneProxyConfigImpl;

    iget-wide v0, p1, Lorg/linphone/core/LinphoneProxyConfigImpl;->nativePtr:J

    .line 276
    :goto_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->setDefaultProxyConfig(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    monitor-exit p0

    return-void

    .line 275
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultSoundDevices()V
    .locals 2

    .prologue
    .line 1738
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->setDefaultSoundDevices(J)V

    .line 1739
    return-void
.end method

.method public declared-synchronized setDeviceRotation(I)V
    .locals 2

    .prologue
    .line 539
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setDeviceRotation(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    monitor-exit p0

    return-void

    .line 539
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDnsServers([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1720
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setDnsServers(J[Ljava/lang/String;)V

    .line 1721
    return-void
.end method

.method public declared-synchronized setDownloadBandwidth(I)V
    .locals 2

    .prologue
    .line 608
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setDownloadBandwidth(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    monitor-exit p0

    return-void

    .line 608
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDownloadPtime(I)V
    .locals 2

    .prologue
    .line 744
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setDownloadPtime(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    monitor-exit p0

    return-void

    .line 744
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFileTransferServer(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1480
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setFileTransferServer(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1481
    monitor-exit p0

    return-void

    .line 1480
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFirewallPolicy(Lorg/linphone/core/LinphoneCore$FirewallPolicy;)V
    .locals 3

    .prologue
    .line 558
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-virtual {p1}, Lorg/linphone/core/LinphoneCore$FirewallPolicy;->value()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/linphone/core/LinphoneCoreImpl;->setFirewallPolicy(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    monitor-exit p0

    return-void

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFriendsDatabasePath(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1295
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setFriendsDatabasePath(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1296
    monitor-exit p0

    return-void

    .line 1295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHttpProxyHost(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1658
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setHttpProxyHost(JLjava/lang/String;)V

    .line 1659
    return-void
.end method

.method public setHttpProxyPort(I)V
    .locals 2

    .prologue
    .line 1664
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setHttpProxyPort(JI)V

    .line 1665
    return-void
.end method

.method public declared-synchronized setInCallTimeout(I)V
    .locals 2

    .prologue
    .line 1111
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setInCallTimeout(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1112
    monitor-exit p0

    return-void

    .line 1111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setIncomingTimeout(I)V
    .locals 2

    .prologue
    .line 1106
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setIncomingTimeout(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    monitor-exit p0

    return-void

    .line 1106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLimeEncryption(Lorg/linphone/core/LinphoneCore$LinphoneLimeState;)V
    .locals 3

    .prologue
    .line 1748
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    iget v2, p1, Lorg/linphone/core/LinphoneCore$LinphoneLimeState;->mValue:I

    invoke-direct {p0, v0, v1, v2}, Lorg/linphone/core/LinphoneCoreImpl;->setLimeEncryption(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1749
    monitor-exit p0

    return-void

    .line 1748
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaxCalls(I)V
    .locals 2

    .prologue
    .line 887
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setMaxCalls(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    monitor-exit p0

    return-void

    .line 887
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMediaEncryption(Lorg/linphone/core/LinphoneCore$MediaEncryption;)V
    .locals 3

    .prologue
    .line 862
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    iget v2, p1, Lorg/linphone/core/LinphoneCore$MediaEncryption;->mValue:I

    invoke-direct {p0, v0, v1, v2}, Lorg/linphone/core/LinphoneCoreImpl;->setMediaEncryption(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    monitor-exit p0

    return-void

    .line 862
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMediaEncryptionMandatory(Z)V
    .locals 2

    .prologue
    .line 865
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setMediaEncryptionMandatory(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 866
    monitor-exit p0

    return-void

    .line 865
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMediaNetworkReachable(Z)V
    .locals 2

    .prologue
    .line 1710
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setMediaNetworkReachable(JZ)V

    .line 1711
    return-void
.end method

.method public declared-synchronized setMicrophoneGain(F)V
    .locals 2

    .prologue
    .line 1116
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setMicrophoneGain(JF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1117
    monitor-exit p0

    return-void

    .line 1116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMtu(I)V
    .locals 2

    .prologue
    .line 1387
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setMtu(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1388
    monitor-exit p0

    return-void

    .line 1387
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNatPolicy(Lorg/linphone/core/LinphoneNatPolicy;)V
    .locals 4

    .prologue
    .line 564
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneNatPolicyImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneNatPolicyImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->setNatPolicy(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    monitor-exit p0

    return-void

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNetworkReachable(Z)V
    .locals 2

    .prologue
    .line 351
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setNetworkStateReachable(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    monitor-exit p0

    return-void

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNortpTimeout(I)V
    .locals 2

    .prologue
    .line 1692
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setNortpTimeout(JI)V

    .line 1693
    return-void
.end method

.method public declared-synchronized setPayloadTypeBitrate(Lorg/linphone/core/PayloadType;I)V
    .locals 7

    .prologue
    .line 1430
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/PayloadTypeImpl;

    iget-wide v4, p1, Lorg/linphone/core/PayloadTypeImpl;->nativePtr:J

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/linphone/core/LinphoneCoreImpl;->setPayloadTypeBitrate(JJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1431
    monitor-exit p0

    return-void

    .line 1430
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPayloadTypeNumber(Lorg/linphone/core/PayloadType;I)V
    .locals 7

    .prologue
    .line 1441
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/PayloadTypeImpl;

    iget-wide v4, p1, Lorg/linphone/core/PayloadTypeImpl;->nativePtr:J

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/linphone/core/LinphoneCoreImpl;->setPayloadTypeNumber(JJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1442
    monitor-exit p0

    return-void

    .line 1441
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPlayFile(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 904
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setPlayFile(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 905
    monitor-exit p0

    return-void

    .line 904
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPlayLevel(I)V
    .locals 0

    .prologue
    .line 443
    return-void
.end method

.method public declared-synchronized setPlaybackGain(F)V
    .locals 2

    .prologue
    .line 354
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setPlaybackGain(JF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    monitor-exit p0

    return-void

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPreferredFramerate(F)V
    .locals 2

    .prologue
    .line 1534
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setPreferredFramerate(JF)V

    .line 1535
    return-void
.end method

.method public declared-synchronized setPreferredVideoSize(Lorg/linphone/core/VideoSize;)V
    .locals 4

    .prologue
    .line 612
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    iget v2, p1, Lorg/linphone/core/VideoSize;->width:I

    iget v3, p1, Lorg/linphone/core/VideoSize;->height:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->setPreferredVideoSize(JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    monitor-exit p0

    return-void

    .line 612
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPreferredVideoSizeByName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 616
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setPreferredVideoSizeByName(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    monitor-exit p0

    return-void

    .line 616
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPresenceInfo(ILjava/lang/String;Lorg/linphone/core/OnlineStatus;)V
    .locals 7

    .prologue
    .line 513
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    iget v6, p3, Lorg/linphone/core/OnlineStatus;->mValue:I

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/linphone/core/LinphoneCoreImpl;->setPresenceInfo(JILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    monitor-exit p0

    return-void

    .line 513
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPresenceModel(Lorg/linphone/core/PresenceModel;)V
    .locals 4

    .prologue
    .line 521
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/PresenceModelImpl;

    invoke-virtual {p1}, Lorg/linphone/core/PresenceModelImpl;->getNativePtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->setPresenceModel(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    monitor-exit p0

    return-void

    .line 521
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPreviewWindow(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 533
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setPreviewWindowId(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    monitor-exit p0

    return-void

    .line 533
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPrimaryContact(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1120
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setPrimaryContact2(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1121
    monitor-exit p0

    return-void

    .line 1120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPrimaryContact(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1128
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/LinphoneCoreImpl;->setPrimaryContact(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1129
    monitor-exit p0

    return-void

    .line 1128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProvisioningUri(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1643
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setProvisioningUri(JLjava/lang/String;)V

    .line 1644
    return-void
.end method

.method public setRemoteRingbackTone(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1514
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setRemoteRingbackTone(JLjava/lang/String;)V

    .line 1515
    return-void
.end method

.method public declared-synchronized setRing(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 628
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setRing(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    monitor-exit p0

    return-void

    .line 628
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRingback(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 643
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setRingback(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    monitor-exit p0

    return-void

    .line 643
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRootCA(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 635
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setRootCA(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    monitor-exit p0

    return-void

    .line 635
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRootCAData(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 639
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setRootCAData(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    monitor-exit p0

    return-void

    .line 639
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSignalingTransportPorts(Lorg/linphone/core/LinphoneCore$Transports;)V
    .locals 7

    .prologue
    .line 721
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    iget v4, p1, Lorg/linphone/core/LinphoneCore$Transports;->udp:I

    iget v5, p1, Lorg/linphone/core/LinphoneCore$Transports;->tcp:I

    iget v6, p1, Lorg/linphone/core/LinphoneCore$Transports;->tls:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/linphone/core/LinphoneCoreImpl;->setSignalingTransportPorts(JIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    monitor-exit p0

    return-void

    .line 721
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSipDscp(I)V
    .locals 2

    .prologue
    .line 1218
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setSipDscp(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1219
    monitor-exit p0

    return-void

    .line 1218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSipNetworkReachable(Z)V
    .locals 2

    .prologue
    .line 1704
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setSipNetworkReachable(JZ)V

    .line 1705
    return-void
.end method

.method public setSipTransportTimeout(I)V
    .locals 2

    .prologue
    .line 1681
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setSipTransportTimeout(JI)V

    .line 1682
    return-void
.end method

.method public declared-synchronized setStaticPicture(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1021
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setStaticPicture(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1022
    monitor-exit p0

    return-void

    .line 1021
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStunServer(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 573
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setStunServer(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    monitor-exit p0

    return-void

    .line 573
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTlsCertificate(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1783
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setTlsCertificate(JLjava/lang/String;)V

    .line 1784
    return-void
.end method

.method public setTlsCertificatePath(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1795
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setTlsCertificatePath(JLjava/lang/String;)V

    .line 1796
    return-void
.end method

.method public setTlsKey(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1789
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setTlsKey(JLjava/lang/String;)V

    .line 1790
    return-void
.end method

.method public setTlsKeyPath(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1801
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setTlsKeyPath(JLjava/lang/String;)V

    .line 1802
    return-void
.end method

.method public declared-synchronized setTone(Lorg/linphone/core/ToneID;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1405
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    iget v2, p1, Lorg/linphone/core/ToneID;->mValue:I

    invoke-direct {p0, v0, v1, v2, p2}, Lorg/linphone/core/LinphoneCoreImpl;->setTone(JILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1406
    monitor-exit p0

    return-void

    .line 1405
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUploadBandwidth(I)V
    .locals 2

    .prologue
    .line 600
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setUploadBandwidth(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    monitor-exit p0

    return-void

    .line 600
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUploadPtime(I)V
    .locals 2

    .prologue
    .line 748
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setUploadPtime(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    monitor-exit p0

    return-void

    .line 748
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUseRfc2833ForDtmfs(Z)V
    .locals 2

    .prologue
    .line 1151
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setUseRfc2833ForDtmfs(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1152
    monitor-exit p0

    return-void

    .line 1151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUseSipInfoForDtmfs(Z)V
    .locals 2

    .prologue
    .line 1141
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setUseSipInfoForDtmfs(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1142
    monitor-exit p0

    return-void

    .line 1141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserAgent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1026
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/LinphoneCoreImpl;->setUserAgent(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1027
    monitor-exit p0

    return-void

    .line 1026
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setUserCertificatesPath(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1726
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setUserCertificatesPath(JLjava/lang/String;)V

    .line 1727
    return-void
.end method

.method public setVerifyServerCN(Z)V
    .locals 2

    .prologue
    .line 1813
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setVerifyServerCN(JZ)V

    .line 1814
    return-void
.end method

.method public setVerifyServerCertificates(Z)V
    .locals 2

    .prologue
    .line 1807
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setVerifyServerCertificates(JZ)V

    .line 1808
    return-void
.end method

.method public declared-synchronized setVideoCodecs([Lorg/linphone/core/PayloadType;)V
    .locals 6

    .prologue
    .line 663
    monitor-enter p0

    :try_start_0
    array-length v0, p1

    new-array v2, v0, [J

    .line 664
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_0

    .line 665
    aget-object v0, p1, v1

    check-cast v0, Lorg/linphone/core/PayloadTypeImpl;

    iget-wide v4, v0, Lorg/linphone/core/PayloadTypeImpl;->nativePtr:J

    aput-wide v4, v2, v1

    .line 664
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 667
    :cond_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2}, Lorg/linphone/core/LinphoneCoreImpl;->setVideoCodecs(J[J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    monitor-exit p0

    return-void

    .line 663
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVideoDevice(I)V
    .locals 3

    .prologue
    .line 758
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "Setting camera id :"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 759
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setVideoDevice(JI)I

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "Failed to set video device to id:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/linphone/mediastream/Log;->e([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    :cond_0
    monitor-exit p0

    return-void

    .line 758
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVideoDscp(I)V
    .locals 2

    .prologue
    .line 1241
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setVideoDscp(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1242
    monitor-exit p0

    return-void

    .line 1241
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVideoJittcomp(I)V
    .locals 2

    .prologue
    .line 1474
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setVideoJittcomp(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1475
    monitor-exit p0

    return-void

    .line 1474
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVideoMulticastAddr(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1552
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setVideoMulticastAddr(JLjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1553
    new-instance v0, Lorg/linphone/core/LinphoneCoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad ip address ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1554
    :cond_0
    return-void
.end method

.method public setVideoMulticastTtl(I)V
    .locals 3

    .prologue
    .line 1575
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setVideoMulticastTtl(JI)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1576
    new-instance v0, Lorg/linphone/core/LinphoneCoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad ttl value ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1577
    :cond_0
    return-void
.end method

.method public declared-synchronized setVideoPolicy(ZZ)V
    .locals 2

    .prologue
    .line 1008
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/LinphoneCoreImpl;->setVideoPolicy(JZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1009
    monitor-exit p0

    return-void

    .line 1008
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVideoPort(I)V
    .locals 2

    .prologue
    .line 1094
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setVideoPort(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1095
    monitor-exit p0

    return-void

    .line 1094
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVideoPortRange(II)V
    .locals 2

    .prologue
    .line 1102
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/LinphoneCoreImpl;->setVideoPortRange(JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1103
    monitor-exit p0

    return-void

    .line 1102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVideoPreset(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1624
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setVideoPreset(JLjava/lang/String;)V

    .line 1625
    return-void
.end method

.method public declared-synchronized setVideoWindow(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 536
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setVideoWindowId(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    monitor-exit p0

    return-void

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setZrtpSecretsCache(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 752
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->setZrtpSecretsCache(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    monitor-exit p0

    return-void

    .line 752
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized soundResourcesLocked()Z
    .locals 2

    .prologue
    .line 881
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->soundResourcesLocked(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startConferenceRecording(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1202
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->startConferenceRecording(JLjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1203
    monitor-exit p0

    return-void

    .line 1202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startEchoCalibration(Lorg/linphone/core/LinphoneCoreListener;)V
    .locals 2

    .prologue
    .line 700
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->startEchoCalibration(JLjava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    monitor-exit p0

    return-void

    .line 700
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startEchoTester(I)I
    .locals 2

    .prologue
    .line 704
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->startEchoTester(JI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startReferedCall(Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCallParams;)Lorg/linphone/core/LinphoneCall;
    .locals 8

    .prologue
    .line 1334
    monitor-enter p0

    :try_start_0
    check-cast p2, Lorg/linphone/core/LinphoneCallParamsImpl;

    iget-wide v6, p2, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    .line 1335
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, p1}, Lorg/linphone/core/LinphoneCoreImpl;->getCallPtr(Lorg/linphone/core/LinphoneCall;)J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/linphone/core/LinphoneCoreImpl;->startReferedCall(JJJ)Lorg/linphone/core/LinphoneCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1334
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopConferenceRecording()V
    .locals 2

    .prologue
    .line 1208
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->stopConferenceRecording(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1209
    monitor-exit p0

    return-void

    .line 1208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopDtmf()V
    .locals 2

    .prologue
    .line 481
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->stopDtmf(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    monitor-exit p0

    return-void

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopEchoTester()I
    .locals 2

    .prologue
    .line 708
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->stopEchoTester(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopRinging()V
    .locals 2

    .prologue
    .line 1425
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->stopRinging(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1426
    monitor-exit p0

    return-void

    .line 1425
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized subscribe(Lorg/linphone/core/LinphoneAddress;Ljava/lang/String;ILorg/linphone/core/LinphoneContent;)Lorg/linphone/core/LinphoneEvent;
    .locals 12

    .prologue
    .line 1260
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneAddressImpl;

    iget-wide v4, p1, Lorg/linphone/core/LinphoneAddressImpl;->nativePtr:J

    if-eqz p4, :cond_0

    .line 1261
    invoke-interface/range {p4 .. p4}, Lorg/linphone/core/LinphoneContent;->getType()Ljava/lang/String;

    move-result-object v8

    :goto_0
    if-eqz p4, :cond_1

    invoke-interface/range {p4 .. p4}, Lorg/linphone/core/LinphoneContent;->getSubtype()Ljava/lang/String;

    move-result-object v9

    :goto_1
    if-eqz p4, :cond_2

    invoke-interface/range {p4 .. p4}, Lorg/linphone/core/LinphoneContent;->getData()[B

    move-result-object v10

    :goto_2
    if-eqz p4, :cond_3

    .line 1262
    invoke-interface/range {p4 .. p4}, Lorg/linphone/core/LinphoneContent;->getEncoding()Ljava/lang/String;

    move-result-object v11

    :goto_3
    move-object v1, p0

    move-object v6, p2

    move v7, p3

    .line 1260
    invoke-direct/range {v1 .. v11}, Lorg/linphone/core/LinphoneCoreImpl;->subscribe(JJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1261
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    .line 1262
    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    .line 1260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized terminateAllCalls()V
    .locals 2

    .prologue
    .line 805
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->terminateAllCalls(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    monitor-exit p0

    return-void

    .line 805
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized terminateCall(Lorg/linphone/core/LinphoneCall;)V
    .locals 4

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreImpl;->isValid()V

    .line 301
    if-eqz p1, :cond_0

    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneCallImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->terminateCall(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :cond_0
    monitor-exit p0

    return-void

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized terminateConference()V
    .locals 2

    .prologue
    .line 785
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->terminateConference(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    monitor-exit p0

    return-void

    .line 785
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized transferCall(Lorg/linphone/core/LinphoneCall;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 841
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, p1}, Lorg/linphone/core/LinphoneCoreImpl;->getCallPtr(Lorg/linphone/core/LinphoneCall;)J

    move-result-wide v4

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/linphone/core/LinphoneCoreImpl;->transferCall(JJLjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 842
    monitor-exit p0

    return-void

    .line 841
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized transferCallToAnother(Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCall;)V
    .locals 8

    .prologue
    .line 846
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, p1}, Lorg/linphone/core/LinphoneCoreImpl;->getCallPtr(Lorg/linphone/core/LinphoneCall;)J

    move-result-wide v4

    invoke-direct {p0, p2}, Lorg/linphone/core/LinphoneCoreImpl;->getCallPtr(Lorg/linphone/core/LinphoneCall;)J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/linphone/core/LinphoneCoreImpl;->transferCallToAnother(JJJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    monitor-exit p0

    return-void

    .line 846
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tunnelAddServer(Lorg/linphone/core/TunnelConfig;)V
    .locals 4

    .prologue
    .line 917
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/TunnelConfigImpl;

    iget-wide v2, p1, Lorg/linphone/core/TunnelConfigImpl;->mNativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCoreImpl;->tunnelAddServer(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 918
    monitor-exit p0

    return-void

    .line 917
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tunnelAddServerAndMirror(Ljava/lang/String;III)V
    .locals 8

    .prologue
    .line 911
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/linphone/core/LinphoneCoreImpl;->tunnelAddServerAndMirror(JLjava/lang/String;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 912
    monitor-exit p0

    return-void

    .line 911
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tunnelAutoDetect()V
    .locals 2

    .prologue
    .line 929
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->tunnelAutoDetect(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 930
    monitor-exit p0

    return-void

    .line 929
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tunnelCleanServers()V
    .locals 2

    .prologue
    .line 935
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->tunnelCleanServers(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    monitor-exit p0

    return-void

    .line 935
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tunnelDualModeEnabled()Z
    .locals 2

    .prologue
    .line 977
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->tunnelDualModeEnabled(J)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized tunnelEnable(Z)V
    .locals 2

    .prologue
    .line 941
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->tunnelEnable(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 942
    monitor-exit p0

    return-void

    .line 941
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tunnelEnableDualMode(Z)V
    .locals 2

    .prologue
    .line 971
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->tunnelEnableDualMode(JZ)V

    .line 972
    return-void
.end method

.method public tunnelEnableSip(Z)V
    .locals 2

    .prologue
    .line 959
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCoreImpl;->tunnelEnableSip(JZ)V

    .line 960
    return-void
.end method

.method public declared-synchronized tunnelGetMode()Lorg/linphone/core/LinphoneCore$TunnelMode;
    .locals 2

    .prologue
    .line 953
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->tunnelGetMode(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneCore$TunnelMode;->intToEnum(I)Lorg/linphone/core/LinphoneCore$TunnelMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized tunnelGetServers()[Lorg/linphone/core/TunnelConfig;
    .locals 2

    .prologue
    .line 923
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->tunnelGetServers(J)[Lorg/linphone/core/TunnelConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tunnelSetHttpProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 1052
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/linphone/core/LinphoneCoreImpl;->tunnelSetHttpProxy(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1053
    monitor-exit p0

    return-void

    .line 1052
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tunnelSetMode(Lorg/linphone/core/LinphoneCore$TunnelMode;)V
    .locals 3

    .prologue
    .line 947
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-static {p1}, Lorg/linphone/core/LinphoneCore$TunnelMode;->enumToInt(Lorg/linphone/core/LinphoneCore$TunnelMode;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/linphone/core/LinphoneCoreImpl;->tunnelSetMode(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 948
    monitor-exit p0

    return-void

    .line 947
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tunnelSipEnabled()Z
    .locals 2

    .prologue
    .line 965
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->tunnelSipEnabled(J)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized updateCall(Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCallParams;)I
    .locals 8

    .prologue
    .line 589
    monitor-enter p0

    :try_start_0
    check-cast p1, Lorg/linphone/core/LinphoneCallImpl;

    iget-wide v4, p1, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    .line 590
    if-eqz p2, :cond_0

    check-cast p2, Lorg/linphone/core/LinphoneCallParamsImpl;

    iget-wide v6, p2, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    .line 592
    :goto_0
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/linphone/core/LinphoneCoreImpl;->updateCall(JJJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 590
    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 589
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public uploadLogCollection()V
    .locals 2

    .prologue
    .line 1525
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->uploadLogCollection(J)V

    .line 1526
    return-void
.end method

.method public declared-synchronized upnpAvailable()Z
    .locals 2

    .prologue
    .line 1187
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->upnpAvailable(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public videoMulticastEnabled()Z
    .locals 2

    .prologue
    .line 1607
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCoreImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCoreImpl;->videoMulticastEnabled(J)Z

    move-result v0

    return v0
.end method

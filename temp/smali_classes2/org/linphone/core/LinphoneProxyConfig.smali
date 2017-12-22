.class public interface abstract Lorg/linphone/core/LinphoneProxyConfig;
.super Ljava/lang/Object;
.source "LinphoneProxyConfig.java"


# virtual methods
.method public abstract avpfEnabled()Z
.end method

.method public abstract done()V
.end method

.method public abstract edit()Lorg/linphone/core/LinphoneProxyConfig;
.end method

.method public abstract enableAvpf(Z)V
.end method

.method public abstract enablePublish(Z)V
.end method

.method public abstract enableQualityReporting(Z)V
.end method

.method public abstract enableRegister(Z)Lorg/linphone/core/LinphoneProxyConfig;
.end method

.method public abstract getAddress()Lorg/linphone/core/LinphoneAddress;
.end method

.method public abstract getAvpfRRInterval()I
.end method

.method public abstract getContactParameters()Ljava/lang/String;
.end method

.method public abstract getContactUriParameters()Ljava/lang/String;
.end method

.method public abstract getCustomHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDialEscapePlus()Z
.end method

.method public abstract getDialPrefix()Ljava/lang/String;
.end method

.method public abstract getDomain()Ljava/lang/String;
.end method

.method public abstract getError()Lorg/linphone/core/Reason;
.end method

.method public abstract getErrorInfo()Lorg/linphone/core/ErrorInfo;
.end method

.method public abstract getExpires()I
.end method

.method public abstract getIdentity()Ljava/lang/String;
.end method

.method public abstract getPrivacy()I
.end method

.method public abstract getProxy()Ljava/lang/String;
.end method

.method public abstract getPublishExpires()I
.end method

.method public abstract getQualityReportingCollector()Ljava/lang/String;
.end method

.method public abstract getQualityReportingInterval()I
.end method

.method public abstract getRealm()Ljava/lang/String;
.end method

.method public abstract getRoute()Ljava/lang/String;
.end method

.method public abstract getState()Lorg/linphone/core/LinphoneCore$RegistrationState;
.end method

.method public abstract getUserData()Ljava/lang/Object;
.end method

.method public abstract isPhoneNumber(Ljava/lang/String;)Z
.end method

.method public abstract isRegistered()Z
.end method

.method public abstract lookupCCCFromE164(Ljava/lang/String;)I
.end method

.method public abstract lookupCCCFromIso(Ljava/lang/String;)I
.end method

.method public abstract normalizePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract normalizeSipUri(Ljava/lang/String;)Lorg/linphone/core/LinphoneAddress;
.end method

.method public abstract pauseRegister()V
.end method

.method public abstract publishEnabled()Z
.end method

.method public abstract qualityReportingEnabled()Z
.end method

.method public abstract refreshRegister()V
.end method

.method public abstract registerEnabled()Z
.end method

.method public abstract setAddress(Lorg/linphone/core/LinphoneAddress;)V
.end method

.method public abstract setAvpfRRInterval(I)V
.end method

.method public abstract setContactParameters(Ljava/lang/String;)V
.end method

.method public abstract setContactUriParameters(Ljava/lang/String;)V
.end method

.method public abstract setCustomHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setDialEscapePlus(Z)V
.end method

.method public abstract setDialPrefix(Ljava/lang/String;)V
.end method

.method public abstract setExpires(I)V
.end method

.method public abstract setIdentity(Ljava/lang/String;)V
.end method

.method public abstract setPrivacy(I)V
.end method

.method public abstract setProxy(Ljava/lang/String;)V
.end method

.method public abstract setPublishExpires(I)V
.end method

.method public abstract setQualityReportingCollector(Ljava/lang/String;)V
.end method

.method public abstract setQualityReportingInterval(I)V
.end method

.method public abstract setRealm(Ljava/lang/String;)V
.end method

.method public abstract setRoute(Ljava/lang/String;)V
.end method

.method public abstract setUserData(Ljava/lang/Object;)V
.end method

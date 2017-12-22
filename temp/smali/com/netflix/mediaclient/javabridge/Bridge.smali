.class public interface abstract Lcom/netflix/mediaclient/javabridge/Bridge;
.super Ljava/lang/Object;
.source "Bridge.java"


# virtual methods
.method public abstract enableLowBitrateStreams()Z
.end method

.method public abstract getChannelId()Ljava/lang/String;
.end method

.method public abstract getConfigVideoBufferSize()I
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;
.end method

.method public abstract getDeviceLocale()Ljava/util/Locale;
.end method

.method public abstract getDisplaySize()Landroid/view/Display;
.end method

.method public abstract getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;
.end method

.method public abstract getFileSystemRoot()Ljava/lang/String;
.end method

.method public abstract getInstallationSource()Ljava/lang/String;
.end method

.method public abstract getIpConnectivityPolicy()Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;
.end method

.method public abstract getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;
.end method

.method public abstract getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;
.end method

.method public abstract getSoftwareVersion()Ljava/lang/String;
.end method

.method public abstract isDeviceLowMem()Z
.end method

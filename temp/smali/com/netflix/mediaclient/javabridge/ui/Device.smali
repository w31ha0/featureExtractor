.class public interface abstract Lcom/netflix/mediaclient/javabridge/ui/Device;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field public static final EVENT_factoryReset:Ljava/lang/String; = "factoryReset"

.field public static final NAME:Ljava/lang/String; = "device"

.field public static final PATH:Ljava/lang/String; = "nrdp.device"


# virtual methods
.method public abstract addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
.end method

.method public abstract factoryReset(Lcom/netflix/mediaclient/javabridge/ui/Callback;)V
.end method

.method public abstract getCertificationVersion()Ljava/lang/String;
.end method

.method public abstract getDeviceModel()Ljava/lang/String;
.end method

.method public abstract getESN()Ljava/lang/String;
.end method

.method public abstract getESNPrefix()Ljava/lang/String;
.end method

.method public abstract getFriendlyName()Ljava/lang/String;
.end method

.method public abstract getLanguage()Ljava/lang/String;
.end method

.method public abstract getSDKVersion()Ljava/lang/String;
.end method

.method public abstract getSoftwareVersion()Ljava/lang/String;
.end method

.method public abstract getUILanguages()[Ljava/lang/String;
.end method

.method public abstract getUIVersion()Ljava/lang/String;
.end method

.method public abstract removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
.end method

.method public abstract setUILanguages([Ljava/lang/String;)V
.end method

.method public abstract setUIVersion(Ljava/lang/String;)V
.end method

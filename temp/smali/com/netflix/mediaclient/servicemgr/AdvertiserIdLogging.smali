.class public interface abstract Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging;
.super Ljava/lang/Object;
.source "AdvertiserIdLogging.java"


# static fields
.field public static final ONSIGNUP:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.ONSIGNUP"


# virtual methods
.method public abstract getAdverisingTrackingPreference()Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$AdverisingATrackingPreference;
.end method

.method public abstract getAdvertiserId()Ljava/lang/String;
.end method

.method public abstract isSupported()Z
.end method

.method public abstract sendAdvertiserId(Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;)V
.end method

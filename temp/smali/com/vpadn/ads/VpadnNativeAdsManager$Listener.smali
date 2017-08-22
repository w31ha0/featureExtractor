.class public interface abstract Lcom/vpadn/ads/VpadnNativeAdsManager$Listener;
.super Ljava/lang/Object;
.source "VpadnNativeAdsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vpadn/ads/VpadnNativeAdsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onVpadnFailedToReceiveAds(Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V
.end method

.method public abstract onVpadnReceiveAds()V
.end method

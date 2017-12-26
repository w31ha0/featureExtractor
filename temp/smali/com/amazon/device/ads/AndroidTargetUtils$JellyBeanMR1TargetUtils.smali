.class Lcom/amazon/device/ads/AndroidTargetUtils$JellyBeanMR1TargetUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setMediaPlaybackRequiresUserGesture(Landroid/webkit/WebSettings;Z)V
    .locals 0

    .prologue
    .line 380
    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 381
    return-void
.end method

.class Lcom/amazon/device/ads/AdContainer$AdContainerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAdContainer(Landroid/content/Context;Lcom/amazon/device/ads/AdCloser;)Lcom/amazon/device/ads/AdContainer;
    .locals 1

    .prologue
    .line 267
    new-instance v0, Lcom/amazon/device/ads/AdContainer;

    invoke-direct {v0, p1, p2}, Lcom/amazon/device/ads/AdContainer;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/AdCloser;)V

    return-object v0
.end method

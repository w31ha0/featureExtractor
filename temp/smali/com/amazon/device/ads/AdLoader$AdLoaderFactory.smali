.class public Lcom/amazon/device/ads/AdLoader$AdLoaderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAdLoader(Lcom/amazon/device/ads/AdRequest;Ljava/util/Map;)Lcom/amazon/device/ads/AdLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/ads/AdRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/device/ads/AdSlot;",
            ">;)",
            "Lcom/amazon/device/ads/AdLoader;"
        }
    .end annotation

    .prologue
    .line 514
    new-instance v0, Lcom/amazon/device/ads/AdLoader;

    invoke-direct {v0, p1, p2}, Lcom/amazon/device/ads/AdLoader;-><init>(Lcom/amazon/device/ads/AdRequest;Ljava/util/Map;)V

    return-object v0
.end method

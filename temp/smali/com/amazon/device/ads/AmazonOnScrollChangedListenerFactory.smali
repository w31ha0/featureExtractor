.class Lcom/amazon/device/ads/AmazonOnScrollChangedListenerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    return-void
.end method


# virtual methods
.method public buildAmazonOnScrollChangedListenerFactory(Lcom/amazon/device/ads/ViewabilityObserver;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 1

    .prologue
    .line 341
    new-instance v0, Lcom/amazon/device/ads/AmazonOnScrollChangedListenerFactory$AmazonOnScrollChangedListener;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/AmazonOnScrollChangedListenerFactory$AmazonOnScrollChangedListener;-><init>(Lcom/amazon/device/ads/AmazonOnScrollChangedListenerFactory;Lcom/amazon/device/ads/ViewabilityObserver;)V

    return-object v0
.end method

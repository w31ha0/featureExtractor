.class public Lcom/mopub/mobileads/factories/CustomEventInterstitialAdapterFactory;
.super Ljava/lang/Object;
.source "CustomEventInterstitialAdapterFactory.java"


# static fields
.field protected static instance:Lcom/mopub/mobileads/factories/CustomEventInterstitialAdapterFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/mopub/mobileads/factories/CustomEventInterstitialAdapterFactory;

    invoke-direct {v0}, Lcom/mopub/mobileads/factories/CustomEventInterstitialAdapterFactory;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/factories/CustomEventInterstitialAdapterFactory;->instance:Lcom/mopub/mobileads/factories/CustomEventInterstitialAdapterFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/mopub/mobileads/MoPubInterstitial;Ljava/lang/String;Ljava/util/Map;JLcom/mopub/common/AdReport;)Lcom/mopub/mobileads/CustomEventInterstitialAdapter;
    .locals 7
    .param p0, "moPubInterstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;
    .param p1, "className"    # Ljava/lang/String;
    .param p3, "broadcastIdentifier"    # J
    .param p5, "adReport"    # Lcom/mopub/common/AdReport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/MoPubInterstitial;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/mopub/common/AdReport;",
            ")",
            "Lcom/mopub/mobileads/CustomEventInterstitialAdapter;"
        }
    .end annotation

    .prologue
    .line 18
    .local p2, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/mopub/mobileads/factories/CustomEventInterstitialAdapterFactory;->instance:Lcom/mopub/mobileads/factories/CustomEventInterstitialAdapterFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mopub/mobileads/factories/CustomEventInterstitialAdapterFactory;->internalCreate(Lcom/mopub/mobileads/MoPubInterstitial;Ljava/lang/String;Ljava/util/Map;JLcom/mopub/common/AdReport;)Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/mopub/mobileads/factories/CustomEventInterstitialAdapterFactory;)V
    .locals 0
    .param p0, "factory"    # Lcom/mopub/mobileads/factories/CustomEventInterstitialAdapterFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 14
    sput-object p0, Lcom/mopub/mobileads/factories/CustomEventInterstitialAdapterFactory;->instance:Lcom/mopub/mobileads/factories/CustomEventInterstitialAdapterFactory;

    .line 15
    return-void
.end method


# virtual methods
.method protected internalCreate(Lcom/mopub/mobileads/MoPubInterstitial;Ljava/lang/String;Ljava/util/Map;JLcom/mopub/common/AdReport;)Lcom/mopub/mobileads/CustomEventInterstitialAdapter;
    .locals 8
    .param p1, "moPubInterstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;
    .param p2, "className"    # Ljava/lang/String;
    .param p4, "broadcastIdentifier"    # J
    .param p6, "adReport"    # Lcom/mopub/common/AdReport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/MoPubInterstitial;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/mopub/common/AdReport;",
            ")",
            "Lcom/mopub/mobileads/CustomEventInterstitialAdapter;"
        }
    .end annotation

    .prologue
    .line 22
    .local p3, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/mopub/mobileads/CustomEventInterstitialAdapter;-><init>(Lcom/mopub/mobileads/MoPubInterstitial;Ljava/lang/String;Ljava/util/Map;JLcom/mopub/common/AdReport;)V

    return-object v0
.end method

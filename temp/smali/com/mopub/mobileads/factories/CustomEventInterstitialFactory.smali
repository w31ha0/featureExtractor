.class public Lcom/mopub/mobileads/factories/CustomEventInterstitialFactory;
.super Ljava/lang/Object;
.source "CustomEventInterstitialFactory.java"


# static fields
.field private static instance:Lcom/mopub/mobileads/factories/CustomEventInterstitialFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/mopub/mobileads/factories/CustomEventInterstitialFactory;

    invoke-direct {v0}, Lcom/mopub/mobileads/factories/CustomEventInterstitialFactory;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/factories/CustomEventInterstitialFactory;->instance:Lcom/mopub/mobileads/factories/CustomEventInterstitialFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventInterstitial;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 11
    sget-object v0, Lcom/mopub/mobileads/factories/CustomEventInterstitialFactory;->instance:Lcom/mopub/mobileads/factories/CustomEventInterstitialFactory;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/factories/CustomEventInterstitialFactory;->internalCreate(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventInterstitial;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/mopub/mobileads/factories/CustomEventInterstitialFactory;)V
    .locals 0
    .param p0, "factory"    # Lcom/mopub/mobileads/factories/CustomEventInterstitialFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 16
    sput-object p0, Lcom/mopub/mobileads/factories/CustomEventInterstitialFactory;->instance:Lcom/mopub/mobileads/factories/CustomEventInterstitialFactory;

    .line 17
    return-void
.end method


# virtual methods
.method protected internalCreate(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventInterstitial;
    .locals 4
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/mopub/mobileads/CustomEventInterstitial;

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 22
    .local v0, "interstitialClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/mopub/mobileads/CustomEventInterstitial;>;"
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 23
    .local v1, "interstitialConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 24
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/mobileads/CustomEventInterstitial;

    return-object v2
.end method

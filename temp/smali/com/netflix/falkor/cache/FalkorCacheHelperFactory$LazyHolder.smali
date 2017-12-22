.class Lcom/netflix/falkor/cache/FalkorCacheHelperFactory$LazyHolder;
.super Ljava/lang/Object;
.source "FalkorCacheHelperFactory.java"


# static fields
.field private static FALKOR_CACHE_ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8204;->isCacheEnabled(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/netflix/falkor/cache/FalkorCacheHelperFactory$LazyHolder;->FALKOR_CACHE_ENABLED:Z

    .line 22
    sget-boolean v0, Lcom/netflix/falkor/cache/FalkorCacheHelperFactory$LazyHolder;->FALKOR_CACHE_ENABLED:Z

    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/netflix/falkor/cache/FalkorDebugScreen;

    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/falkor/cache/FalkorDebugScreen;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/android/debug/DebugOverlay;->addExternalDebugScreens(Landroid/content/Context;Lcom/netflix/mediaclient/android/debug/ExternalDebugScreen;)V

    .line 25
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/netflix/falkor/cache/FalkorCacheHelperFactory$LazyHolder;->FALKOR_CACHE_ENABLED:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .prologue
    .line 17
    sput-boolean p0, Lcom/netflix/falkor/cache/FalkorCacheHelperFactory$LazyHolder;->FALKOR_CACHE_ENABLED:Z

    return p0
.end method

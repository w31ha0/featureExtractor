.class public final Lcom/netflix/falkor/cache/FalkorCacheHelperFactory;
.super Ljava/lang/Object;
.source "FalkorCacheHelperFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FalkorCache.Factory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHelper(Landroid/content/Context;Z)Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;
    .locals 4

    .prologue
    .line 41
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCacheHelperFactory$LazyHolder;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    new-instance v0, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8204;->getLolomoExpiry(Landroid/content/Context;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;-><init>(J)V

    .line 48
    :goto_0
    return-object v0

    .line 45
    :cond_0
    new-instance v0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8204;->getLolomoExpiry(Landroid/content/Context;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;-><init>(J)V

    goto :goto_0

    .line 48
    :cond_1
    new-instance v0, Lcom/netflix/falkor/cache/NoopFalkorCacheHelperImpl;

    invoke-direct {v0}, Lcom/netflix/falkor/cache/NoopFalkorCacheHelperImpl;-><init>()V

    goto :goto_0
.end method

.method public static updateFalkorCacheEnabled()V
    .locals 5

    .prologue
    .line 30
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8204;->isCacheEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/netflix/falkor/cache/FalkorCacheHelperFactory$LazyHolder;->access$002(Z)Z

    .line 31
    const-string/jumbo v0, "FalkorCache.Factory"

    const-string/jumbo v1, "updateFalkorCacheEnabled FALKOR_CACHE_ENABLED=%b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCacheHelperFactory$LazyHolder;->access$000()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 32
    return-void
.end method

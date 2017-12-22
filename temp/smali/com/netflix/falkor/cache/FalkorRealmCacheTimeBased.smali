.class public Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;
.super Ljava/lang/Object;
.source "FalkorRealmCacheTimeBased.java"

# interfaces
.implements Lcom/netflix/falkor/cache/FalkorCache$FalkorCacheable;
.implements Lio/realm/FalkorRealmCacheTimeBasedRealmProxyInterface;


# instance fields
.field private expiry:Ljava/util/Date;

.field private lastModified:J

.field private path:Ljava/lang/String;

.field private payload:Ljava/lang/String;

.field private sentinel:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p0, Lio/realm/internal/RealmObjectProxy;

    if-eqz v0, :cond_0

    check-cast p0, Lio/realm/internal/RealmObjectProxy;

    invoke-interface {p0}, Lio/realm/internal/RealmObjectProxy;->realm$injectObjectContext()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getExpiry()Ljava/util/Date;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;->realmGet$expiry()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getLastModifiedTime()J
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;->realmGet$lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;->realmGet$path()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;->realmGet$payload()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSentinel()Z
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;->realmGet$sentinel()Z

    move-result v0

    return v0
.end method

.method public getVolatile()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public realmGet$expiry()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;->expiry:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$lastModified()J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;->lastModified:J

    return-wide v0
.end method

.method public realmGet$path()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;->path:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$payload()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$sentinel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;->sentinel:Z

    return v0
.end method

.method public realmSet$expiry(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;->expiry:Ljava/util/Date;

    return-void
.end method

.method public realmSet$lastModified(J)V
    .locals 1

    iput-wide p1, p0, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;->lastModified:J

    return-void
.end method

.method public realmSet$path(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;->path:Ljava/lang/String;

    return-void
.end method

.method public realmSet$payload(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;->payload:Ljava/lang/String;

    return-void
.end method

.method public realmSet$sentinel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;->sentinel:Z

    return-void
.end method

.method public setExpiry(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;->realmSet$expiry(Ljava/util/Date;)V

    .line 61
    return-void
.end method

.method public setLastModifiedTime(J)V
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;->realmSet$lastModified(J)V

    .line 78
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;->realmSet$path(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setPayload(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;->realmSet$payload(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public setSentinel(Z)V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/netflix/falkor/cache/FalkorRealmCacheTimeBased;->realmSet$sentinel(Z)V

    return-void
.end method

.method public setVolatile(Z)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

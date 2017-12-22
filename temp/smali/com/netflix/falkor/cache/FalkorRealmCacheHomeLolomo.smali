.class public Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;
.super Ljava/lang/Object;
.source "FalkorRealmCacheHomeLolomo.java"

# interfaces
.implements Lio/realm/FalkorRealmCacheHomeLolomoRealmProxyInterface;
.implements Lio/realm/RealmModel;


# instance fields
.field private expiry:Ljava/util/Date;

.field private lolomosRef:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
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
    .line 33
    invoke-virtual {p0}, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;->realmGet$expiry()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getLolomosRef()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;->realmGet$lolomosRef()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public realmGet$expiry()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;->expiry:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$lolomosRef()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;->lolomosRef:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$expiry(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;->expiry:Ljava/util/Date;

    return-void
.end method

.method public realmSet$lolomosRef(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;->lolomosRef:Ljava/lang/String;

    return-void
.end method

.method public setExpiry(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;->realmSet$expiry(Ljava/util/Date;)V

    .line 38
    return-void
.end method

.method public setLolomosRef(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;->realmSet$lolomosRef(Ljava/lang/String;)V

    .line 30
    return-void
.end method

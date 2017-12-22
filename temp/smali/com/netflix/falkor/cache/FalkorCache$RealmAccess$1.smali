.class final Lcom/netflix/falkor/cache/FalkorCache$RealmAccess$1;
.super Ljava/lang/Object;
.source "FalkorCache.java"

# interfaces
.implements Lio/realm/Realm$Transaction;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 0

    .prologue
    .line 180
    invoke-virtual {p1}, Lio/realm/Realm;->deleteAll()V

    .line 181
    return-void
.end method

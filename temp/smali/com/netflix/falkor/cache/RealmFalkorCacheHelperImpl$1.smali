.class Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$1;
.super Ljava/lang/Object;
.source "RealmFalkorCacheHelperImpl.java"

# interfaces
.implements Lio/realm/Realm$Transaction;


# instance fields
.field final synthetic this$0:Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;

.field final synthetic val$jsonValue:Lcom/google/gson/JsonElement;

.field final synthetic val$payload:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;Ljava/lang/String;Lcom/google/gson/JsonElement;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$1;->this$0:Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;

    iput-object p2, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$1;->val$payload:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$1;->val$jsonValue:Lcom/google/gson/JsonElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 6

    .prologue
    .line 189
    iget-object v0, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$1;->this$0:Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;

    iget-object v0, v0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;->mRealm:Lio/realm/Realm;

    const-class v1, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;

    invoke-virtual {v0, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findFirst()Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;

    .line 190
    if-nez v0, :cond_0

    .line 191
    const-class v0, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->createObject(Ljava/lang/Class;)Lio/realm/RealmModel;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;

    .line 195
    :goto_0
    iget-object v1, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$1;->val$payload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;->setLolomosRef(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$1;->val$jsonValue:Lcom/google/gson/JsonElement;

    const-class v2, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;

    invoke-static {v1, v2}, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;->access$000(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;->setExpiry(Ljava/util/Date;)V

    .line 197
    return-void

    .line 193
    :cond_0
    const-string/jumbo v1, "FalkorCache.RealmHelper"

    const-string/jumbo v2, "Overwriting non-expired lolomo %s (expire=%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;->getLolomosRef()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/netflix/falkor/cache/FalkorRealmCacheHomeLolomo;->getExpiry()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.class Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$3;
.super Ljava/lang/Object;
.source "RealmFalkorCacheHelperImpl.java"

# interfaces
.implements Lio/realm/Realm$Transaction;


# instance fields
.field final synthetic this$0:Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;

.field final synthetic val$clazz:Ljava/lang/Class;

.field final synthetic val$path:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;Ljava/util/List;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$3;->this$0:Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;

    iput-object p2, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$3;->val$path:Ljava/util/List;

    iput-object p3, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$3;->val$clazz:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$3;->val$path:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$3;->val$clazz:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string/jumbo v2, "path"

    invoke-virtual {v1, v2, v0}, Lio/realm/RealmQuery;->beginsWith(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    .line 323
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache;->getMonitor()Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    move-result-object v1

    invoke-virtual {v0}, Lio/realm/RealmResults;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->delete(I)V

    .line 324
    invoke-virtual {v0}, Lio/realm/RealmResults;->deleteAllFromRealm()Z

    .line 325
    return-void
.end method

.class Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$FalkorTransaction;
.super Ljava/lang/Object;
.source "RealmFalkorCacheHelperImpl.java"

# interfaces
.implements Lio/realm/Realm$Transaction;


# instance fields
.field private final clazz:Ljava/lang/Class;

.field private final expiry:Ljava/util/Date;

.field private final json:Lcom/google/gson/JsonElement;

.field private final path:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/util/ArrayList;Lcom/google/gson/JsonElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/realm/RealmModel;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/gson/JsonElement;",
            ")V"
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$FalkorTransaction;->clazz:Ljava/lang/Class;

    .line 123
    iput-object p2, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$FalkorTransaction;->path:Ljava/util/ArrayList;

    .line 124
    iput-object p3, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$FalkorTransaction;->json:Lcom/google/gson/JsonElement;

    .line 125
    invoke-static {p3, p1}, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;->access$000(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$FalkorTransaction;->expiry:Ljava/util/Date;

    .line 126
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Ljava/util/ArrayList;Lcom/google/gson/JsonElement;Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$1;)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$FalkorTransaction;-><init>(Ljava/lang/Class;Ljava/util/ArrayList;Lcom/google/gson/JsonElement;)V

    return-void
.end method


# virtual methods
.method public execute(Lio/realm/Realm;)V
    .locals 6

    .prologue
    .line 133
    :try_start_0
    iget-object v2, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$FalkorTransaction;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$FalkorTransaction;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string/jumbo v3, "_sentinel"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    move v3, v2

    .line 134
    :goto_0
    iget-object v2, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$FalkorTransaction;->clazz:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/falkor/cache/FalkorCache$FalkorCacheable;

    .line 136
    iget-object v4, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$FalkorTransaction;->path:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/netflix/falkor/cache/FalkorCache$FalkorCacheable;->setPath(Ljava/lang/String;)V

    .line 137
    iget-object v4, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$FalkorTransaction;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/netflix/falkor/cache/FalkorCache$FalkorCacheable;->setPayload(Ljava/lang/String;)V

    .line 138
    invoke-interface {v2, v3}, Lcom/netflix/falkor/cache/FalkorCache$FalkorCacheable;->setSentinel(Z)V

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/netflix/falkor/cache/FalkorCache$FalkorCacheable;->setLastModifiedTime(J)V

    .line 141
    iget-object v3, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$FalkorTransaction;->expiry:Ljava/util/Date;

    if-eqz v3, :cond_0

    .line 142
    iget-object v3, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$FalkorTransaction;->expiry:Ljava/util/Date;

    invoke-interface {v2, v3}, Lcom/netflix/falkor/cache/FalkorCache$FalkorCacheable;->setExpiry(Ljava/util/Date;)V

    .line 147
    :cond_0
    iget-object v3, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$FalkorTransaction;->clazz:Ljava/lang/Class;

    const-class v4, Lcom/netflix/falkor/cache/FalkorRealmCacheLruBased;

    if-ne v3, v4, :cond_1

    .line 148
    invoke-static {}, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;->access$100()Ljava/util/HashSet;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$FalkorTransaction;->path:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$FalkorTransaction;->path:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 149
    invoke-interface {v2, v3}, Lcom/netflix/falkor/cache/FalkorCache$FalkorCacheable;->setVolatile(Z)V

    .line 152
    :cond_1
    invoke-virtual {p1, v2}, Lio/realm/Realm;->copyToRealmOrUpdate(Lio/realm/RealmModel;)Lio/realm/RealmModel;

    .line 154
    instance-of v3, v2, Lcom/netflix/falkor/cache/FalkorCache$FalkorEvictable;

    if-eqz v3, :cond_2

    .line 155
    move-object v0, v2

    check-cast v0, Lcom/netflix/falkor/cache/FalkorCache$FalkorEvictable;

    move-object v3, v0

    invoke-static {v3}, Lcom/netflix/falkor/cache/FalkorCache$LruBackup;->push(Lcom/netflix/falkor/cache/FalkorCache$FalkorEvictable;)V

    .line 158
    :cond_2
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache;->getMonitor()Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    move-result-object v3

    invoke-interface {v2}, Lcom/netflix/falkor/cache/FalkorCache$FalkorCacheable;->getPayload()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->add(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 167
    return-void

    .line 133
    :cond_3
    const/4 v2, 0x0

    move v3, v2

    goto :goto_0

    .line 160
    :catch_0
    move-exception v2

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SPY-12279: Exception for path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl$FalkorTransaction;->path:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    throw v2

    .line 164
    :catch_1
    move-exception v2

    .line 165
    :goto_1
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 164
    :catch_2
    move-exception v2

    goto :goto_1
.end method

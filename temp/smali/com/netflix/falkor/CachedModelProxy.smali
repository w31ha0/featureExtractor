.class public Lcom/netflix/falkor/CachedModelProxy;
.super Ljava/lang/Object;
.source "CachedModelProxy.java"

# interfaces
.implements Lcom/netflix/falkor/ModelProxy;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/netflix/falkor/BranchNode;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/netflix/falkor/ModelProxy",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final ACTION_NOTIFY_OF_RATINGS_CHANGE:Ljava/lang/String; = "com.netflix.falkor.ACTION_NOTIFY_OF_RATINGS_CHANGE"

.field public static final EXTRA_USER_THUMB_RATING:Ljava/lang/String; = "extra_user_thumb_rating"

.field public static final EXTRA_VIDEO_ID:Ljava/lang/String; = "extra_video_id"

.field public static final FETCH_EPISODES_REQUEST_BATCH_SIZE:I = 0x28

.field public static FORCE_CMP_TO_LOCAL_CACHE:Z = false

.field public static final MAX_SEARCH_RESULTS_PER_SECTION_INDEX:I = 0x13

.field private static final NEWLINE:Ljava/lang/String; = "\n"

.field private static final ORIGINALS_BILLBOARDS_ENABLED:Z = true

.field private static final PREFETCH_BILLBOARD_VIDEO_INDEX:I = 0x9

.field private static final TAG:Ljava/lang/String; = "CachedModelProxy"

.field private static sLastWriteTimeMS:J


# instance fields
.field private final jsonParser:Lcom/google/gson/JsonParser;

.field private lastPrefetchFromVideo:I

.field private lastPrefetchToVideo:I

.field private final mainHandler:Landroid/os/Handler;

.field private final root:Lcom/netflix/falkor/BranchNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final serviceProvider:Lcom/netflix/falkor/ServiceProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/falkor/CachedModelProxy;->FORCE_CMP_TO_LOCAL_CACHE:Z

    return-void
.end method

.method public constructor <init>(Lcom/netflix/falkor/ServiceProvider;Lcom/netflix/falkor/BranchNode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/ServiceProvider;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    iput-object v0, p0, Lcom/netflix/falkor/CachedModelProxy;->jsonParser:Lcom/google/gson/JsonParser;

    .line 169
    iput-object p1, p0, Lcom/netflix/falkor/CachedModelProxy;->serviceProvider:Lcom/netflix/falkor/ServiceProvider;

    .line 170
    iput-object p2, p0, Lcom/netflix/falkor/CachedModelProxy;->root:Lcom/netflix/falkor/BranchNode;

    .line 171
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/falkor/CachedModelProxy;->mainHandler:Landroid/os/Handler;

    .line 173
    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/falkor/cache/FalkorCacheHelperFactory;->getHelper(Landroid/content/Context;Z)Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;

    move-result-object v2

    const/4 v1, 0x0

    .line 174
    :try_start_0
    invoke-interface {v2}, Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;->expireLolomoListsFromCache()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v2}, Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;->close()V

    goto :goto_0

    .line 173
    :catch_1
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v2}, Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_1
    throw v0

    :catch_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;->close()V

    goto :goto_1
.end method

.method private doDumpCacheToDiskRecursive(Ljava/lang/StringBuilder;Lcom/netflix/falkor/BranchNode;IZ)V
    .locals 5

    .prologue
    .line 1141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1142
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    .line 1143
    add-int/lit8 v0, p3, -0x1

    if-ne v1, v0, :cond_0

    const-string/jumbo v0, " |-"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1143
    :cond_0
    const-string/jumbo v0, " | "

    goto :goto_1

    .line 1146
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1148
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Lcom/netflix/falkor/BranchNode;->getKeys()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1149
    if-eqz p4, :cond_2

    .line 1150
    new-instance v1, Lcom/netflix/mediaclient/util/AlphanumComparator;

    invoke-direct {v1}, Lcom/netflix/mediaclient/util/AlphanumComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1152
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1153
    invoke-interface {p2, v0}, Lcom/netflix/falkor/BranchNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1154
    instance-of v4, v1, Lcom/netflix/falkor/Ref;

    if-eqz v4, :cond_4

    .line 1155
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " -> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v1

    check-cast v0, Lcom/netflix/falkor/Ref;

    invoke-virtual {v0}, Lcom/netflix/falkor/Ref;->getRefPath()Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    :goto_3
    instance-of v0, v1, Lcom/netflix/falkor/BranchNode;

    if-eqz v0, :cond_3

    .line 1163
    check-cast v1, Lcom/netflix/falkor/BranchNode;

    add-int/lit8 v0, p3, 0x1

    const/4 v4, 0x1

    invoke-direct {p0, p1, v1, v0, v4}, Lcom/netflix/falkor/CachedModelProxy;->doDumpCacheToDiskRecursive(Ljava/lang/StringBuilder;Lcom/netflix/falkor/BranchNode;IZ)V

    goto :goto_2

    .line 1156
    :cond_4
    instance-of v4, v1, Lcom/netflix/falkor/Sentinel;

    if-eqz v4, :cond_5

    .line 1157
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " -> [sentinel]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1159
    :cond_5
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1166
    :cond_6
    return-void
.end method

.method private declared-synchronized get(Lcom/netflix/falkor/PQL;Ljava/lang/Object;ILcom/netflix/falkor/CachedModelProxy$GetResult;Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;)V
    .locals 10

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 226
    if-ge p3, v1, :cond_1

    if-nez p2, :cond_1

    .line 227
    iget-object v1, p4, Lcom/netflix/falkor/CachedModelProxy$GetResult;->missingPqls:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 229
    :cond_1
    if-ne p3, v1, :cond_3

    .line 230
    if-eqz p2, :cond_2

    .line 231
    :try_start_1
    iget-object v1, p4, Lcom/netflix/falkor/CachedModelProxy$GetResult;->foundPqls:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 233
    :cond_2
    :try_start_2
    iget-object v1, p4, Lcom/netflix/falkor/CachedModelProxy$GetResult;->missingPqls:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    :cond_3
    if-le p3, v1, :cond_4

    .line 237
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Offset is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :cond_4
    instance-of v1, p2, Lcom/netflix/falkor/Ref;

    if-eqz v1, :cond_7

    .line 242
    check-cast p2, Lcom/netflix/falkor/Ref;

    .line 243
    invoke-virtual {p2}, Lcom/netflix/falkor/Ref;->getHardValue()Ljava/lang/Object;

    move-result-object v3

    .line 244
    if-eqz v3, :cond_5

    .line 245
    invoke-virtual {p2}, Lcom/netflix/falkor/Ref;->getRefPath()Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {p1, p3}, Lcom/netflix/falkor/PQL;->slice(I)Lcom/netflix/falkor/PQL;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/falkor/PQL;->append(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/PQL;

    move-result-object v2

    .line 247
    invoke-virtual {p2}, Lcom/netflix/falkor/Ref;->getRefPath()Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    move-object v1, p0

    move-object v5, p4

    move-object v6, p5

    .line 245
    invoke-direct/range {v1 .. v6}, Lcom/netflix/falkor/CachedModelProxy;->get(Lcom/netflix/falkor/PQL;Ljava/lang/Object;ILcom/netflix/falkor/CachedModelProxy$GetResult;Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;)V

    goto :goto_0

    .line 251
    :cond_5
    invoke-virtual {p2}, Lcom/netflix/falkor/Ref;->getRefPath()Lcom/netflix/falkor/PQL;

    move-result-object v1

    if-nez v1, :cond_6

    .line 255
    iget-object v1, p4, Lcom/netflix/falkor/CachedModelProxy$GetResult;->missingPqls:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    :cond_6
    invoke-virtual {p2}, Lcom/netflix/falkor/Ref;->getRefPath()Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {p1, p3}, Lcom/netflix/falkor/PQL;->slice(I)Lcom/netflix/falkor/PQL;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/falkor/PQL;->append(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/PQL;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/falkor/CachedModelProxy;->root:Lcom/netflix/falkor/BranchNode;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/netflix/falkor/CachedModelProxy;->get(Lcom/netflix/falkor/PQL;Ljava/lang/Object;ILcom/netflix/falkor/CachedModelProxy$GetResult;Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;)V

    goto :goto_0

    .line 265
    :cond_7
    instance-of v1, p2, Ljava/lang/Exception;

    if-nez v1, :cond_8

    instance-of v1, p2, Lcom/netflix/falkor/Undefined;

    if-eqz v1, :cond_9

    .line 266
    :cond_8
    iget-object v1, p4, Lcom/netflix/falkor/CachedModelProxy$GetResult;->ignoredPqls:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 270
    :cond_9
    move-object v0, p2

    check-cast v0, Lcom/netflix/falkor/BranchNode;

    move-object v1, v0

    .line 271
    invoke-virtual {p1}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 275
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_e

    .line 276
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 278
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 279
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_d

    .line 280
    check-cast v1, Ljava/util/Map;

    .line 282
    const-string/jumbo v2, "from"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 283
    const-string/jumbo v3, "to"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    move-object v7, v0

    .line 285
    if-nez v2, :cond_b

    .line 286
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 289
    :cond_b
    if-nez v7, :cond_c

    .line 290
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No \'to\' param"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    :cond_c
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v8, v1

    :goto_2
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v8, v1, :cond_a

    .line 294
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Lcom/netflix/falkor/PQL;->replaceKeySegment(ILjava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/netflix/falkor/CachedModelProxy;->get(Lcom/netflix/falkor/PQL;Ljava/lang/Object;ILcom/netflix/falkor/CachedModelProxy$GetResult;Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;)V

    .line 293
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_2

    .line 297
    :cond_d
    invoke-virtual {p1, p3, v1}, Lcom/netflix/falkor/PQL;->replaceKeySegment(ILjava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/netflix/falkor/CachedModelProxy;->get(Lcom/netflix/falkor/PQL;Ljava/lang/Object;ILcom/netflix/falkor/CachedModelProxy$GetResult;Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;)V

    goto :goto_1

    .line 300
    :cond_e
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_11

    .line 301
    check-cast v2, Ljava/util/Map;

    .line 303
    const-string/jumbo v1, "from"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 304
    const-string/jumbo v3, "to"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    move-object v7, v0

    .line 306
    if-nez v1, :cond_f

    .line 307
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 310
    :cond_f
    if-nez v7, :cond_10

    .line 311
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No \'to\' param"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 314
    :cond_10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v8, v1

    :goto_3
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v8, v1, :cond_0

    .line 315
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Lcom/netflix/falkor/PQL;->replaceKeySegment(ILjava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/netflix/falkor/CachedModelProxy;->get(Lcom/netflix/falkor/PQL;Ljava/lang/Object;ILcom/netflix/falkor/CachedModelProxy$GetResult;Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;)V

    .line 314
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_3

    .line 318
    :cond_11
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 319
    invoke-interface {v1, v2}, Lcom/netflix/falkor/BranchNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 320
    add-int/lit8 v4, p3, 0x1

    .line 321
    if-nez v3, :cond_12

    if-eqz p5, :cond_12

    .line 322
    invoke-virtual {p1}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {p5, v3, v4, v2, v1}, Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;->retrieveFromCache(Ljava/util/List;ILjava/lang/String;Lcom/netflix/falkor/BranchNode;)Ljava/lang/Object;

    move-result-object v3

    :cond_12
    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    move-object v6, p5

    .line 325
    invoke-direct/range {v1 .. v6}, Lcom/netflix/falkor/CachedModelProxy;->get(Lcom/netflix/falkor/PQL;Ljava/lang/Object;ILcom/netflix/falkor/CachedModelProxy$GetResult;Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private getCurrLomoInfo(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Lcom/netflix/mediaclient/util/DataUtil$StringPair;
    .locals 3

    .prologue
    .line 514
    invoke-virtual {p0, p1}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLomoByType(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Landroid/util/Pair;

    move-result-object v2

    .line 515
    if-nez v2, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    .line 516
    :goto_0
    if-nez v2, :cond_1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 520
    :goto_1
    new-instance v2, Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    invoke-direct {v2, v1, v0}, Lcom/netflix/mediaclient/util/DataUtil$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 515
    :cond_0
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 516
    :cond_1
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_1
.end method

.method public static getLastWriteTimeToCacheMS()J
    .locals 2

    .prologue
    .line 183
    sget-wide v0, Lcom/netflix/falkor/CachedModelProxy;->sLastWriteTimeMS:J

    return-wide v0
.end method

.method private getService()Lcom/netflix/mediaclient/service/NetflixService;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy;->serviceProvider:Lcom/netflix/falkor/ServiceProvider;

    invoke-interface {v0}, Lcom/netflix/falkor/ServiceProvider;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method private launchTask(Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 467
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Launching task: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 468
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    .line 469
    return-void
.end method

.method private rootStringRepresentation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1130
    const-string/jumbo v1, "==START OF CACHE=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    const-string/jumbo v1, "==END OF CACHE=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setLastWriteTimeMS(J)V
    .locals 0

    .prologue
    .line 179
    sput-wide p0, Lcom/netflix/falkor/CachedModelProxy;->sLastWriteTimeMS:J

    .line 180
    return-void
.end method

.method private write(Lcom/google/gson/Gson;Lcom/google/gson/stream/JsonWriter;)V
    .locals 1

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy;->root:Lcom/netflix/falkor/BranchNode;

    invoke-static {p1, v0, p2}, Lcom/netflix/falkor/CachedModelProxy;->write(Lcom/google/gson/Gson;Ljava/lang/Object;Lcom/google/gson/stream/JsonWriter;)V

    .line 1216
    return-void
.end method

.method private static write(Lcom/google/gson/Gson;Ljava/lang/Object;Lcom/google/gson/stream/JsonWriter;)V
    .locals 4

    .prologue
    .line 1220
    instance-of v0, p1, Lcom/netflix/falkor/BranchNode;

    if-eqz v0, :cond_3

    .line 1224
    check-cast p1, Lcom/netflix/falkor/BranchNode;

    .line 1225
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    .line 1226
    invoke-interface {p1}, Lcom/netflix/falkor/BranchNode;->getKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1227
    invoke-interface {p1, v0}, Lcom/netflix/falkor/BranchNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1231
    invoke-static {v0}, Lcom/netflix/falkor/BranchNodeUtils;->shouldIgnoreKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1237
    invoke-virtual {p2, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 1238
    invoke-static {p0, v2, p2}, Lcom/netflix/falkor/CachedModelProxy;->write(Lcom/google/gson/Gson;Ljava/lang/Object;Lcom/google/gson/stream/JsonWriter;)V

    goto :goto_0

    .line 1240
    :cond_1
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    .line 1289
    :cond_2
    :goto_1
    return-void

    .line 1244
    :cond_3
    instance-of v0, p1, Lcom/netflix/falkor/Ref;

    if-eqz v0, :cond_6

    .line 1245
    check-cast p1, Lcom/netflix/falkor/Ref;

    .line 1247
    invoke-virtual {p1}, Lcom/netflix/falkor/Ref;->getRefPath()Lcom/netflix/falkor/PQL;

    move-result-object v0

    .line 1248
    if-nez v0, :cond_4

    .line 1252
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_1

    .line 1254
    :cond_4
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    .line 1258
    invoke-virtual {v0}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1259
    invoke-static {p0, v1, p2}, Lcom/netflix/falkor/CachedModelProxy;->write(Lcom/google/gson/Gson;Ljava/lang/Object;Lcom/google/gson/stream/JsonWriter;)V

    goto :goto_2

    .line 1261
    :cond_5
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    goto :goto_1

    .line 1266
    :cond_6
    instance-of v0, p1, Lcom/netflix/falkor/Sentinel;

    if-eqz v0, :cond_9

    .line 1267
    check-cast p1, Lcom/netflix/falkor/Sentinel;

    .line 1268
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    .line 1269
    const-string/jumbo v0, "_sentinel"

    invoke-virtual {p2, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 1270
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    .line 1271
    invoke-virtual {p1}, Lcom/netflix/falkor/Sentinel;->getExpires()Ljava/util/Date;

    move-result-object v0

    .line 1272
    if-eqz v0, :cond_7

    .line 1273
    const-string/jumbo v1, "$expires"

    invoke-virtual {p2, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 1274
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 1277
    :cond_7
    invoke-virtual {p1}, Lcom/netflix/falkor/Sentinel;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1278
    if-eqz v0, :cond_8

    .line 1279
    const-string/jumbo v1, "value"

    invoke-virtual {p2, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 1280
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/stream/JsonWriter;)V

    .line 1282
    :cond_8
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    goto :goto_1

    .line 1283
    :cond_9
    if-eqz p1, :cond_2

    .line 1287
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/stream/JsonWriter;)V

    goto :goto_1
.end method


# virtual methods
.method public addToQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ILjava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 10

    .prologue
    .line 982
    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLolomoId()Ljava/lang/String;

    move-result-object v4

    .line 983
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->INSTANT_QUEUE:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLomoInfo(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    move-result-object v1

    .line 984
    new-instance v0, Lcom/netflix/falkor/task/AddToQueueTask;

    iget-object v5, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/netflix/falkor/task/AddToQueueTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 992
    return-void
.end method

.method public createHandlerWrapper(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;
    .locals 2

    .prologue
    .line 472
    new-instance v0, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy;->mainHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Lcom/netflix/mediaclient/service/browse/PostToHandlerCallbackWrapper;-><init>(Landroid/os/Handler;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    return-object v0
.end method

.method public declared-synchronized descriptiveString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 462
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CachedModelProxy cache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy;->root:Lcom/netflix/falkor/BranchNode;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deserializeStream(Ljava/io/Reader;)V
    .locals 2

    .prologue
    .line 1183
    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    .line 1184
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    .line 1186
    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy;->root:Lcom/netflix/falkor/BranchNode;

    instance-of v1, v1, Lcom/netflix/falkor/BranchNode;

    if-eqz v1, :cond_0

    .line 1187
    iget-object v1, p0, Lcom/netflix/falkor/CachedModelProxy;->root:Lcom/netflix/falkor/BranchNode;

    invoke-static {v1, v0}, Lcom/netflix/falkor/BranchNodeUtils;->merge(Lcom/netflix/falkor/BranchNode;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    .line 1192
    :cond_0
    return-void
.end method

.method public doesCwExist()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1019
    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLolomoId()Ljava/lang/String;

    move-result-object v0

    .line 1020
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->CONTINUE_WATCHING:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-direct {p0, v2}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLomoInfo(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    move-result-object v2

    .line 1022
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1023
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v2, "CW doesn\'t exist - lolomoId is empty"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1036
    :goto_0
    return v0

    .line 1027
    :cond_0
    iget-object v0, v2, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1028
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v2, "CW doesn\'t exist - lomo id is empty"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1029
    goto :goto_0

    .line 1032
    :cond_1
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v2, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1033
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v2, "CW doesn\'t exist - lomo index is invalid"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1034
    goto :goto_0

    .line 1036
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dumpCacheToDisk(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 1121
    if-eqz p1, :cond_0

    .line 1122
    const-string/jumbo v0, "CachedModelProxy"

    invoke-direct {p0}, Lcom/netflix/falkor/CachedModelProxy;->rootStringRepresentation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/util/FileUtils;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    .line 1126
    :goto_0
    return-void

    .line 1124
    :cond_0
    const-string/jumbo v0, "cache.txt"

    invoke-virtual {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->dumpCacheToDisk(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dumpCacheToDisk(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1114
    const-string/jumbo v0, "CachedModelProxy"

    invoke-direct {p0}, Lcom/netflix/falkor/CachedModelProxy;->rootStringRepresentation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/util/FileUtils;->writeStringToExternalStorageDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1115
    return-void
.end method

.method public fetchAdvisories(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 2

    .prologue
    .line 1009
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1010
    if-eqz p2, :cond_0

    .line 1011
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->INT_ERR_ADVIS_VIDEO_ID_NULL:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p2, v0, v1}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onAdvisoriesFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1016
    :cond_0
    :goto_0
    return-void

    .line 1014
    :cond_1
    new-instance v0, Lcom/netflix/falkor/task/FetchAdvisoriesTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/falkor/task/FetchAdvisoriesTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public fetchBBVideos(IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 6

    .prologue
    .line 784
    new-instance v0, Lcom/netflix/falkor/task/FetchBillboardVideosTask;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/falkor/task/FetchBillboardVideosTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 785
    return-void
.end method

.method public fetchCWVideos(IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 6

    .prologue
    .line 788
    new-instance v0, Lcom/netflix/falkor/task/FetchCwVideosTask;

    if-eqz p3, :cond_0

    sget-object v4, Lcom/netflix/falkor/task/CmpTaskMode;->FROM_CACHE_ONLY:Lcom/netflix/falkor/task/CmpTaskMode;

    :goto_0
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/falkor/task/FetchCwVideosTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;IILcom/netflix/falkor/task/CmpTaskMode;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 790
    return-void

    .line 788
    :cond_0
    sget-object v4, Lcom/netflix/falkor/task/CmpTaskMode;->FROM_CACHE_OR_NETWORK:Lcom/netflix/falkor/task/CmpTaskMode;

    goto :goto_0
.end method

.method public fetchCWVideosFromNetwork(IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 6

    .prologue
    .line 793
    new-instance v0, Lcom/netflix/falkor/task/FetchCwVideosTask;

    sget-object v4, Lcom/netflix/falkor/task/CmpTaskMode;->FROM_NETWORK:Lcom/netflix/falkor/task/CmpTaskMode;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/falkor/task/FetchCwVideosTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;IILcom/netflix/falkor/task/CmpTaskMode;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 794
    return-void
.end method

.method public fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 883
    new-instance v0, Lcom/netflix/falkor/task/FetchEpisodeDetailsTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netflix/falkor/task/FetchEpisodeDetailsTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 884
    return-void
.end method

.method public fetchEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 7

    .prologue
    .line 903
    new-instance v0, Lcom/netflix/falkor/task/FetchEpisodesTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/falkor/task/FetchEpisodesTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 904
    return-void
.end method

.method public fetchFalkorVideo(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 825
    new-instance v0, Lcom/netflix/falkor/task/FetchFalkorVideoTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/falkor/task/FetchFalkorVideoTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 826
    return-void
.end method

.method public fetchGenreList(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 813
    new-instance v0, Lcom/netflix/falkor/task/FetchGenreListTask;

    invoke-direct {v0, p0, p1}, Lcom/netflix/falkor/task/FetchGenreListTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 814
    return-void
.end method

.method public fetchGenreLoLoMoSummary(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 895
    new-instance v0, Lcom/netflix/falkor/task/FetchGenreLoLoMoSummaryTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/falkor/task/FetchGenreLoLoMoSummaryTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 896
    return-void
.end method

.method public fetchGenres(Ljava/lang/String;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 6

    .prologue
    .line 817
    new-instance v0, Lcom/netflix/falkor/task/FetchGenresTask;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/falkor/task/FetchGenresTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 818
    return-void
.end method

.method public fetchIQVideos(IIZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 11

    .prologue
    .line 801
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->INSTANT_QUEUE:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {p0, v1}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLomoByType(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Landroid/util/Pair;

    move-result-object v2

    .line 802
    if-nez v2, :cond_0

    .line 803
    const-string/jumbo v1, "CachedModelProxy"

    const-string/jumbo v2, "Asked to fetch IQ videos but no IQ lomo currently exists in cache!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->NOT_VALID:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    move-object/from16 v0, p6

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 810
    :goto_0
    return-void

    .line 809
    :cond_0
    new-instance v1, Lcom/netflix/falkor/task/FetchVideosTask;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v1 .. v10}, Lcom/netflix/falkor/task/FetchVideosTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v1}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public fetchInteractiveVideoMoments(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 8

    .prologue
    .line 932
    new-instance v0, Lcom/netflix/falkor/task/FetchInteractiveVideoMomentsTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/netflix/falkor/task/FetchInteractiveVideoMomentsTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 933
    return-void
.end method

.method public fetchKidsCharacterDetails(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 871
    new-instance v0, Lcom/netflix/falkor/task/FetchKidsCharacterDetailsTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/falkor/task/FetchKidsCharacterDetailsTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 872
    return-void
.end method

.method public fetchLoMos(IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 767
    new-instance v0, Lcom/netflix/falkor/task/FetchLoMosTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netflix/falkor/task/FetchLoMosTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 768
    return-void
.end method

.method public fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 829
    new-instance v0, Lcom/netflix/falkor/task/FetchMovieDetailsTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netflix/falkor/task/FetchMovieDetailsTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 830
    return-void
.end method

.method public fetchNonMemberVideos(IZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 780
    new-instance v0, Lcom/netflix/falkor/task/FetchNonMemberVideosTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netflix/falkor/task/FetchNonMemberVideosTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;IZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 781
    return-void
.end method

.method public fetchNotifications(IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 6

    .prologue
    .line 916
    new-instance v0, Lcom/netflix/falkor/task/FetchNotificationsTask;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/falkor/task/FetchNotificationsTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 917
    return-void
.end method

.method public fetchOfflineGeoPlayability(Ljava/util/List;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 797
    new-instance v0, Lcom/netflix/falkor/task/FetchOfflineGeoPlayabilityTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/falkor/task/FetchOfflineGeoPlayabilityTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/util/List;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 798
    return-void
.end method

.method public fetchPersonDetail(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 863
    new-instance v0, Lcom/netflix/falkor/task/FetchPersonDetail;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netflix/falkor/task/FetchPersonDetail;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 864
    return-void
.end method

.method public fetchPersonRelated(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 867
    new-instance v0, Lcom/netflix/falkor/task/FetchPersonRelated;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/falkor/task/FetchPersonRelated;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 868
    return-void
.end method

.method public fetchPostPlayVideos(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 6

    .prologue
    .line 875
    new-instance v0, Lcom/netflix/falkor/task/FetchPostPlayVideosTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/falkor/task/FetchPostPlayVideosTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 876
    return-void
.end method

.method public fetchScenePosition(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 6

    .prologue
    .line 891
    new-instance v0, Lcom/netflix/falkor/task/FetchScenePositionTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/falkor/task/FetchScenePositionTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 892
    return-void
.end method

.method public fetchSeasonDetails(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 887
    new-instance v0, Lcom/netflix/falkor/task/FetchSeasonDetailsTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/falkor/task/FetchSeasonDetailsTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 888
    return-void
.end method

.method public fetchSeasons(Ljava/lang/String;Lcom/netflix/falkor/task/CmpTaskMode;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 899
    new-instance v0, Lcom/netflix/falkor/task/FetchSeasonsTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netflix/falkor/task/FetchSeasonsTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/falkor/task/CmpTaskMode;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 900
    return-void
.end method

.method public fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 8

    .prologue
    .line 859
    new-instance v0, Lcom/netflix/falkor/task/FetchShowDetailsTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/netflix/falkor/task/FetchShowDetailsTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Ljava/lang/String;ZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 860
    return-void
.end method

.method public fetchSimilarVideos(Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;Ljava/lang/String;ILjava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 7

    .prologue
    .line 912
    new-instance v0, Lcom/netflix/falkor/task/FetchSimilarVideosTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/falkor/task/FetchSimilarVideosTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/falkor/Falkor$SimilarRequestType;Ljava/lang/String;ILjava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 913
    return-void
.end method

.method public fetchTask(Lcom/netflix/falkor/task/CmpTaskDetails;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 741
    new-instance v0, Lcom/netflix/falkor/task/CmpTaskWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/falkor/task/CmpTaskWrapper;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/falkor/task/CmpTaskDetails;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 742
    return-void
.end method

.method public fetchVideoSummary(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 821
    new-instance v0, Lcom/netflix/falkor/task/FetchVideoSummaryTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/falkor/task/FetchVideoSummaryTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 822
    return-void
.end method

.method public fetchVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 10

    .prologue
    .line 772
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->BILLBOARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    new-instance v0, Lcom/netflix/falkor/task/FetchBillboardVideosTask;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/netflix/falkor/task/FetchBillboardVideosTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 777
    :goto_0
    return-void

    .line 775
    :cond_0
    new-instance v0, Lcom/netflix/falkor/task/FetchVideosTask;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/netflix/falkor/task/FetchVideosTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public declared-synchronized flushCaches()V
    .locals 2

    .prologue
    .line 435
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/netflix/falkor/CachedModelProxy;->lastPrefetchFromVideo:I

    .line 436
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/falkor/CachedModelProxy;->lastPrefetchToVideo:I

    .line 438
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy;->root:Lcom/netflix/falkor/BranchNode;

    instance-of v0, v0, Ljava/io/Flushable;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy;->root:Lcom/netflix/falkor/BranchNode;

    check-cast v0, Ljava/io/Flushable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    :try_start_1
    invoke-interface {v0}, Ljava/io/Flushable;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 445
    :catch_0
    move-exception v0

    .line 446
    :try_start_2
    const-string/jumbo v1, "CachedModelProxy"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public forceFetchFromLocalCache(Z)V
    .locals 5

    .prologue
    .line 1172
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "forcing CMP fetch behavior to useLocalCacheOnly:%b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    sput-boolean p1, Lcom/netflix/falkor/CachedModelProxy;->FORCE_CMP_TO_LOCAL_CACHE:Z

    .line 1174
    return-void
.end method

.method public declared-synchronized get(Ljava/util/Collection;)Lcom/netflix/falkor/CachedModelProxy$GetResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)",
            "Lcom/netflix/falkor/CachedModelProxy$GetResult;"
        }
    .end annotation

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    new-instance v4, Lcom/netflix/falkor/CachedModelProxy$GetResult;

    invoke-direct {v4, p1}, Lcom/netflix/falkor/CachedModelProxy$GetResult;-><init>(Ljava/util/Collection;)V

    .line 201
    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/falkor/cache/FalkorCacheHelperFactory;->getHelper(Landroid/content/Context;Z)Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    const/4 v6, 0x0

    .line 202
    :try_start_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/falkor/PQL;

    .line 203
    iget-object v2, p0, Lcom/netflix/falkor/CachedModelProxy;->root:Lcom/netflix/falkor/BranchNode;

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/netflix/falkor/CachedModelProxy;->get(Lcom/netflix/falkor/PQL;Ljava/lang/Object;ILcom/netflix/falkor/CachedModelProxy$GetResult;Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_1
    if-eqz v5, :cond_0

    if-eqz v1, :cond_4

    :try_start_3
    invoke-interface {v5}, Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    :goto_2
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 200
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 205
    :cond_1
    if-eqz v5, :cond_2

    if-eqz v6, :cond_3

    :try_start_5
    invoke-interface {v5}, Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 206
    :cond_2
    :goto_3
    monitor-exit p0

    return-object v4

    .line 205
    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-interface {v5}, Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;->close()V

    goto :goto_3

    :catch_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v5}, Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 727
    invoke-direct {p0}, Lcom/netflix/falkor/CachedModelProxy;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCurrLolomoId()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 492
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "lolomo"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/Ref;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    if-nez v0, :cond_0

    move-object v0, v1

    .line 502
    :goto_0
    monitor-exit p0

    return-object v0

    .line 497
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/netflix/falkor/Ref;->getRefPath()Lcom/netflix/falkor/PQL;

    move-result-object v0

    .line 498
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/falkor/PQL;->getNumKeySegments()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    :cond_1
    move-object v0, v1

    .line 499
    goto :goto_0

    .line 502
    :cond_2
    invoke-virtual {v0}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrLomoByType(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 531
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "lolomo"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/Ref;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    if-nez v0, :cond_0

    move-object v0, v3

    .line 549
    :goto_0
    monitor-exit p0

    return-object v0

    .line 536
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/netflix/falkor/Ref;->getRefPath()Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/falkor/BranchMap;

    .line 537
    if-nez v1, :cond_1

    move-object v0, v3

    .line 538
    goto :goto_0

    .line 541
    :cond_1
    invoke-virtual {v1}, Lcom/netflix/falkor/BranchMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 542
    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 543
    invoke-virtual {v0}, Lcom/netflix/falkor/Ref;->getRefPath()Lcom/netflix/falkor/PQL;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "summary"

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/netflix/falkor/PQL;->append(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/PQL;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 544
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v5

    if-ne v5, p1, :cond_2

    .line 545
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 531
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-object v0, v3

    .line 549
    goto :goto_0
.end method

.method public getCurrentProfileGuidOrNull()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 717
    .line 718
    invoke-direct {p0}, Lcom/netflix/falkor/CachedModelProxy;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    .line 719
    if-eqz v1, :cond_1

    .line 720
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v1

    .line 722
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public getGenreList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 583
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "genreList"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v0

    .line 584
    if-eqz v0, :cond_0

    .line 585
    new-instance v1, Ljava/util/ArrayList;

    check-cast v0, Lcom/netflix/falkor/Sentinel;

    invoke-virtual {v0}, Lcom/netflix/falkor/Sentinel;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 587
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lcom/netflix/model/branches/FalkorObject;",
            ">(",
            "Lcom/netflix/falkor/PQL;",
            ")",
            "Ljava/util/List",
            "<TI;>;"
        }
    .end annotation

    .prologue
    .line 592
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getItemsAsList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getItemsAsList(Ljava/util/Collection;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lcom/netflix/model/branches/FalkorObject;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)",
            "Ljava/util/List",
            "<TI;>;"
        }
    .end annotation

    .prologue
    .line 597
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 598
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/PQL;

    .line 601
    invoke-virtual {v0}, Lcom/netflix/falkor/PQL;->getAllNodeIndex()I

    move-result v4

    .line 602
    if-ltz v4, :cond_1

    .line 603
    const/4 v1, 0x0

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v1, v5}, Lcom/netflix/falkor/PQL;->slice(II)Lcom/netflix/falkor/PQL;

    move-result-object v5

    .line 604
    invoke-virtual {p0, v5}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v1

    .line 605
    instance-of v6, v1, Lcom/netflix/falkor/Ref;

    if-eqz v6, :cond_3

    .line 606
    check-cast v1, Lcom/netflix/falkor/Ref;

    invoke-virtual {v1}, Lcom/netflix/falkor/Ref;->getRefPath()Lcom/netflix/falkor/PQL;

    move-result-object v1

    .line 607
    if-eqz v1, :cond_1

    .line 608
    invoke-virtual {v1}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/netflix/falkor/PQL;->replaceKeySegment(ILjava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    .line 615
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/netflix/falkor/PQL;->explode()Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 616
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/PQL;

    .line 617
    invoke-virtual {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v0

    .line 618
    instance-of v4, v0, Lcom/netflix/model/branches/FalkorObject;

    if-eqz v4, :cond_2

    .line 619
    check-cast v0, Lcom/netflix/model/branches/FalkorObject;

    .line 623
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 597
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 611
    :cond_3
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CachedModelProxy "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Lcom/netflix/falkor/PQL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " was not a Ref - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;)V

    goto :goto_0

    .line 628
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 629
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/branches/FalkorObject;

    .line 630
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 636
    :cond_5
    monitor-exit p0

    return-object v1
.end method

.method public getJsonParser()Lcom/google/gson/JsonParser;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy;->jsonParser:Lcom/google/gson/JsonParser;

    return-object v0
.end method

.method public getLastPrefetchFromVideo()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/netflix/falkor/CachedModelProxy;->lastPrefetchFromVideo:I

    return v0
.end method

.method public getLastPrefetchToVideo()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/netflix/falkor/CachedModelProxy;->lastPrefetchToVideo:I

    return v0
.end method

.method public declared-synchronized getLists(ILjava/util/Collection;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "LT::Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)",
            "Ljava/util/List",
            "<T",
            "LT;",
            ">;"
        }
    .end annotation

    .prologue
    .line 553
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 554
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/PQL;

    .line 556
    invoke-virtual {v0}, Lcom/netflix/falkor/PQL;->explode()Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 557
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, p1

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/PQL;

    .line 558
    invoke-virtual {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v1

    .line 559
    instance-of v6, v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    if-eqz v6, :cond_2

    .line 560
    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 561
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 562
    add-int/lit8 v0, v2, 0x1

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->setListPos(I)V

    .line 563
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    move v2, v0

    .line 572
    goto :goto_0

    .line 569
    :cond_1
    const-string/jumbo v6, "CachedModelProxy"

    const-string/jumbo v7, "got unidentified lomo - pql: %s, lomo: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    aput-object v1, v8, v0

    invoke-static {v6, v7, v8}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    move v0, v2

    goto :goto_1

    .line 579
    :cond_3
    monitor-exit p0

    return-object v3

    .line 553
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMementoAsSwatchAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Lcom/netflix/model/branches/MementoVideoSwatch;",
            ">(",
            "Lcom/netflix/falkor/PQL;",
            ")",
            "Ljava/util/List",
            "<TI;>;"
        }
    .end annotation

    .prologue
    .line 640
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 641
    invoke-virtual {p1}, Lcom/netflix/falkor/PQL;->explode()Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 642
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/PQL;

    .line 643
    invoke-virtual {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v0

    .line 644
    instance-of v3, v0, Lcom/netflix/model/branches/MementoVideoSwatch;

    if-eqz v3, :cond_0

    .line 645
    check-cast v0, Lcom/netflix/model/branches/MementoVideoSwatch;

    .line 649
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 640
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 653
    :cond_1
    monitor-exit p0

    return-object v1
.end method

.method public getRoot()Lcom/netflix/falkor/BranchNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 456
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy;->root:Lcom/netflix/falkor/BranchNode;

    return-object v0
.end method

.method public getServiceProvider()Lcom/netflix/falkor/ServiceProvider;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/netflix/falkor/CachedModelProxy;->serviceProvider:Lcom/netflix/falkor/ServiceProvider;

    return-object v0
.end method

.method public declared-synchronized getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 334
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/falkor/PQL;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 338
    :cond_0
    const/4 v1, 0x0

    .line 382
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v1

    .line 344
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/netflix/falkor/CachedModelProxy;->root:Lcom/netflix/falkor/BranchNode;

    .line 345
    move-object v0, v2

    check-cast v0, Lcom/netflix/falkor/BranchNode;

    move-object v1, v0

    .line 347
    invoke-virtual {p1}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v5

    .line 348
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 350
    const/4 v3, 0x0

    move v4, v3

    move-object v3, v2

    move-object v2, v1

    :goto_1
    if-ge v4, v6, :cond_7

    .line 351
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 352
    if-nez v1, :cond_3

    move-object v1, v3

    .line 350
    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v1

    goto :goto_1

    .line 356
    :cond_3
    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Lcom/netflix/falkor/BranchNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 360
    :goto_3
    instance-of v2, v1, Lcom/netflix/falkor/Ref;

    if-eqz v2, :cond_4

    .line 361
    check-cast v1, Lcom/netflix/falkor/Ref;

    .line 364
    add-int/lit8 v2, v6, -0x1

    if-eq v4, v2, :cond_1

    .line 368
    invoke-virtual {v1, p0}, Lcom/netflix/falkor/Ref;->getValue(Lcom/netflix/falkor/ModelProxy;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    .line 371
    :cond_4
    instance-of v2, v1, Lcom/netflix/model/branches/FalkorObject;

    if-eqz v2, :cond_5

    add-int/lit8 v2, v6, -0x2

    if-ge v4, v2, :cond_1

    .line 374
    :cond_5
    instance-of v2, v1, Lcom/netflix/falkor/BranchNode;

    if-eqz v2, :cond_6

    .line 375
    move-object v0, v1

    check-cast v0, Lcom/netflix/falkor/BranchNode;

    move-object v2, v0

    goto :goto_2

    .line 376
    :cond_6
    instance-of v2, v1, Ljava/lang/Exception;

    if-nez v2, :cond_1

    instance-of v2, v1, Lcom/netflix/falkor/Undefined;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_7
    move-object v1, v3

    .line 382
    goto :goto_0

    .line 334
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getVideo(Lcom/netflix/falkor/PQL;)Lcom/netflix/model/branches/FalkorObject;
    .locals 3

    .prologue
    .line 657
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/falkor/PQL;->explode()Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 658
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/PQL;

    .line 659
    invoke-virtual {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v0

    .line 660
    instance-of v2, v0, Lcom/netflix/model/branches/FalkorObject;

    if-eqz v2, :cond_0

    .line 661
    check-cast v0, Lcom/netflix/model/branches/FalkorObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 657
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invalidate(Lcom/netflix/falkor/PQL;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 386
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/falkor/PQL;->getNumKeySegments()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v0, v2}, Lcom/netflix/falkor/PQL;->slice(II)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v0

    .line 389
    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/netflix/falkor/cache/FalkorCacheHelperFactory;->getHelper(Landroid/content/Context;Z)Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    const/4 v3, 0x0

    .line 390
    :try_start_1
    invoke-virtual {p1}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;->deleteSubPath(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 391
    if-eqz v2, :cond_0

    if-eqz v1, :cond_2

    :try_start_2
    invoke-interface {v2}, Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 393
    :cond_0
    :goto_0
    if-nez v0, :cond_5

    .line 413
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 391
    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 391
    :cond_2
    :try_start_4
    invoke-interface {v2}, Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 389
    :catch_1
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 391
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_2
    if-eqz v2, :cond_3

    if-eqz v1, :cond_4

    :try_start_6
    invoke-interface {v2}, Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_3
    :goto_3
    :try_start_7
    throw v0

    :catch_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-interface {v2}, Lcom/netflix/falkor/cache/FalkorCacheHelperInterface;->close()V

    goto :goto_3

    .line 397
    :cond_5
    instance-of v1, v0, Lcom/netflix/falkor/BranchNode;

    if-eqz v1, :cond_6

    .line 398
    invoke-virtual {p1}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/falkor/PQL;->getNumKeySegments()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 402
    check-cast v0, Lcom/netflix/falkor/BranchNode;

    invoke-interface {v0, v1}, Lcom/netflix/falkor/BranchNode;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 403
    :cond_6
    instance-of v1, v0, Lcom/netflix/falkor/Ref;

    if-eqz v1, :cond_1

    .line 407
    check-cast v0, Lcom/netflix/falkor/Ref;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/Ref;->setRefPath(Lcom/netflix/falkor/PQL;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 391
    :catchall_2
    move-exception v0

    goto :goto_2
.end method

.method public invalidateEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 3

    .prologue
    .line 1095
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "episodes"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->invalidate(Lcom/netflix/falkor/PQL;)V

    .line 1096
    return-void
.end method

.method public logBillboardActivity(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            "Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1001
    new-instance v0, Lcom/netflix/falkor/task/LogBillboardActivityTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/netflix/falkor/task/LogBillboardActivityTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 1002
    return-void
.end method

.method public logHandledException(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1107
    invoke-direct {p0}, Lcom/netflix/falkor/CachedModelProxy;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getClientLogging()Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->getErrorLogging()Lcom/netflix/mediaclient/servicemgr/ErrorLogging;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/String;)V

    .line 1108
    return-void
.end method

.method public logPostPlayImpression(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 6

    .prologue
    .line 879
    new-instance v0, Lcom/netflix/falkor/task/LogPostPlayImpression;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/falkor/task/LogPostPlayImpression;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 880
    return-void
.end method

.method public markNotificationAsRead(Lcom/netflix/model/leafs/social/IrisNotificationSummary;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 920
    new-instance v0, Lcom/netflix/falkor/task/MarkNotificationAsReadTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/falkor/task/MarkNotificationAsReadTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/model/leafs/social/IrisNotificationSummary;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 921
    return-void
.end method

.method public markNotificationsAsRead(Ljava/util/List;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/leafs/social/IrisNotificationSummary;",
            ">;",
            "Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 924
    new-instance v0, Lcom/netflix/falkor/task/MarkNotificationAsReadTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/falkor/task/MarkNotificationAsReadTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/util/List;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 925
    return-void
.end method

.method public onCWVideosFetched(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1103
    invoke-direct {p0}, Lcom/netflix/falkor/CachedModelProxy;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getBookmarkStore()Lcom/netflix/mediaclient/media/BookmarkStore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrentProfileGuidOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/media/BookmarkStore;->onCWVideosFetched(Ljava/util/List;Ljava/lang/String;)V

    .line 1104
    return-void
.end method

.method public prefetchGenreLoLoMo(Ljava/lang/String;IIIIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 7

    .prologue
    .line 763
    new-instance v0, Lcom/netflix/falkor/task/PrefetchGenreLoLoMoTask;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/netflix/falkor/task/PrefetchGenreLoLoMoTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 764
    return-void
.end method

.method public prefetchLoLoMo(IIIIIIZZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 10

    .prologue
    .line 748
    iput p3, p0, Lcom/netflix/falkor/CachedModelProxy;->lastPrefetchFromVideo:I

    .line 749
    iput p4, p0, Lcom/netflix/falkor/CachedModelProxy;->lastPrefetchToVideo:I

    .line 750
    new-instance v0, Lcom/netflix/falkor/task/PrefetchLoLoMoTask;

    const/16 v5, 0x9

    move-object v1, p0

    move v2, p2

    move v3, p4

    move/from16 v4, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p10

    move-object/from16 v9, p11

    invoke-direct/range {v0 .. v9}, Lcom/netflix/falkor/task/PrefetchLoLoMoTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;IIIIZZZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 758
    return-void
.end method

.method public prefetchVideoDetailsFromQueue()V
    .locals 3

    .prologue
    .line 841
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->isPrefetchQueueEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 842
    invoke-static {}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->getPrefetchCounter()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 844
    invoke-static {}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->incrementPrefetchCounter()I

    .line 845
    invoke-static {}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->getNextPrefetchVideo()Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    move-result-object v0

    .line 846
    if-eqz v0, :cond_0

    .line 850
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->removePrefetchDPCallback(Lcom/netflix/mediaclient/servicemgr/interface_/Video;)Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;

    move-result-object v1

    .line 851
    new-instance v2, Lcom/netflix/falkor/task/PrefetchVideoListDetailsTask;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, p0, v0, v1}, Lcom/netflix/falkor/task/PrefetchVideoListDetailsTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/util/List;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v2}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 853
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->decrementPrefetchCounter()I

    goto :goto_0

    .line 856
    :cond_1
    return-void
.end method

.method public prefetchVideoListDetails(Ljava/util/List;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 833
    invoke-static {}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->isPrefetchQueueEmpty()Z

    move-result v0

    .line 834
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/details/DPPrefetchABTestUtils;->addToQueue(Ljava/util/List;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 835
    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy;->prefetchVideoDetailsFromQueue()V

    .line 838
    :cond_0
    return-void
.end method

.method public purgePersistentCache()V
    .locals 2

    .prologue
    .line 424
    :try_start_0
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache$RealmAccess;->purge()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :goto_0
    return-void

    .line 425
    :catch_0
    move-exception v0

    .line 426
    const-string/jumbo v1, "purgePersistentCache"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public refreshCw()V
    .locals 4

    .prologue
    .line 1040
    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy;->doesCwExist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1041
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Can\'t refresh CW "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :goto_0
    return-void

    .line 1045
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLolomoId()Ljava/lang/String;

    move-result-object v2

    .line 1046
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->CONTINUE_WATCHING:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLomoInfo(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    move-result-object v1

    .line 1047
    new-instance v3, Lcom/netflix/falkor/task/RefreshCwTask;

    iget-object v0, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/netflix/falkor/task/RefreshCwTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public refreshIq()V
    .locals 4

    .prologue
    .line 1051
    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLolomoId()Ljava/lang/String;

    move-result-object v2

    .line 1052
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->INSTANT_QUEUE:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLomoInfo(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    move-result-object v1

    .line 1054
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1055
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Can\'t refresh IQ - lolomoId is empty"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :goto_0
    return-void

    .line 1059
    :cond_0
    iget-object v0, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1060
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Can\'t refresh IQ - lomo id is empty"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1064
    :cond_1
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1065
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Can\'t refresh IQ - lomo index is invalid"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1069
    :cond_2
    new-instance v3, Lcom/netflix/falkor/task/RefreshIqTask;

    iget-object v0, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/netflix/falkor/task/RefreshIqTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public refreshPopularTitlesLomo()V
    .locals 4

    .prologue
    .line 1073
    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLolomoId()Ljava/lang/String;

    move-result-object v2

    .line 1074
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->POPULAR_TITLES:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLomoInfo(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    move-result-object v1

    .line 1076
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1077
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Can\'t refresh Popular Titles - lolomoId is empty"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :goto_0
    return-void

    .line 1081
    :cond_0
    iget-object v0, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1082
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Can\'t refresh Popular Titles - lomo id is empty"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1086
    :cond_1
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1087
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Can\'t refresh Popular Titles - lomo index is invalid"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1091
    :cond_2
    new-instance v3, Lcom/netflix/falkor/task/RefreshPopularTitlesTask;

    iget-object v0, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/netflix/falkor/task/RefreshPopularTitlesTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public removeFromQueue(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 9

    .prologue
    .line 995
    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLolomoId()Ljava/lang/String;

    move-result-object v4

    .line 996
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->INSTANT_QUEUE:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrLomoInfo(Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Lcom/netflix/mediaclient/util/DataUtil$StringPair;

    move-result-object v1

    .line 997
    new-instance v0, Lcom/netflix/falkor/task/RemoveFromQueueTask;

    iget-object v5, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v1, Lcom/netflix/mediaclient/util/DataUtil$StringPair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/netflix/falkor/task/RemoveFromQueueTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 998
    return-void
.end method

.method public searchNetflix(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 1

    .prologue
    .line 907
    new-instance v0, Lcom/netflix/falkor/task/FetchSearchResultsTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/falkor/task/FetchSearchResultsTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 908
    return-void
.end method

.method public sendDetailPageReloadBroadcast()V
    .locals 2

    .prologue
    .line 732
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.DETAIL_PAGE_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 734
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Intent DETAIL_PAGE_REFRESH sent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    return-void
.end method

.method public serialize(Ljava/io/Writer;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1201
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 1202
    invoke-static {}, Lcom/netflix/mediaclient/AutoValueAdapterFactory;->create()Lcom/google/gson/TypeAdapterFactory;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapterFactory(Lcom/google/gson/TypeAdapterFactory;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 1203
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->enableComplexMapKeySerialization()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 1204
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 1205
    invoke-virtual {v0, v2, v3}, Lcom/google/gson/GsonBuilder;->setVersion(D)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    new-instance v2, Lcom/netflix/falkor/CachedModelProxy$SuperclassExclusionStrategy;

    invoke-direct {v2, p0, v1}, Lcom/netflix/falkor/CachedModelProxy$SuperclassExclusionStrategy;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/falkor/CachedModelProxy$1;)V

    .line 1206
    invoke-virtual {v0, v2}, Lcom/google/gson/GsonBuilder;->addSerializationExclusionStrategy(Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    new-instance v2, Lcom/netflix/falkor/CachedModelProxy$SuperclassExclusionStrategy;

    invoke-direct {v2, p0, v1}, Lcom/netflix/falkor/CachedModelProxy$SuperclassExclusionStrategy;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/falkor/CachedModelProxy$1;)V

    .line 1207
    invoke-virtual {v0, v2}, Lcom/google/gson/GsonBuilder;->addDeserializationExclusionStrategy(Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 1208
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 1209
    new-instance v2, Lcom/google/gson/stream/JsonWriter;

    invoke-direct {v2, p1}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 1210
    :try_start_0
    invoke-direct {p0, v0, v2}, Lcom/netflix/falkor/CachedModelProxy;->write(Lcom/google/gson/Gson;Lcom/google/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1211
    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v2}, Lcom/google/gson/stream/JsonWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1212
    :cond_0
    :goto_0
    return-void

    .line 1211
    :catch_0
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/gson/stream/JsonWriter;->close()V

    goto :goto_0

    .line 1209
    :catch_1
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1211
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v2}, Lcom/google/gson/stream/JsonWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_1
    throw v0

    :catch_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/google/gson/stream/JsonWriter;->close()V

    goto :goto_1
.end method

.method public setVideoThumbRating(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 7

    .prologue
    .line 928
    new-instance v0, Lcom/netflix/falkor/task/SetVideoThumbRatingTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/falkor/task/SetVideoThumbRatingTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 929
    return-void
.end method

.method public updateBookmarkIfExists(Ljava/lang/String;Lcom/netflix/model/leafs/Video$Bookmark;)V
    .locals 2

    .prologue
    .line 1099
    invoke-direct {p0}, Lcom/netflix/falkor/CachedModelProxy;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getBookmarkStore()Lcom/netflix/mediaclient/media/BookmarkStore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/falkor/CachedModelProxy;->getCurrentProfileGuidOrNull()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/netflix/mediaclient/media/BookmarkStore;->updateBookmarkIfExists(Ljava/lang/String;Lcom/netflix/model/leafs/Video$Bookmark;Ljava/lang/String;)V

    .line 1100
    return-void
.end method

.method public updateBookmarkPosition(Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 937
    if-nez p1, :cond_1

    .line 938
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "Can\'t update bookmark position - asset is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlaybackBookmark()I

    move-result v1

    .line 947
    if-lez v1, :cond_0

    .line 954
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 955
    const-string/jumbo v0, "CachedModelProxy"

    const-string/jumbo v1, "asset with null playableId, asset:%s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 959
    :cond_2
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isEpisode()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v2, v3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    const/4 v0, 0x2

    const-string/jumbo v3, "bookmark"

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    .line 960
    invoke-virtual {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->getVideo(Lcom/netflix/falkor/PQL;)Lcom/netflix/model/branches/FalkorObject;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/branches/FalkorVideo;

    .line 962
    if-eqz v0, :cond_0

    .line 969
    invoke-virtual {v0}, Lcom/netflix/model/branches/FalkorVideo;->getBookmark()Lcom/netflix/model/leafs/Video$Bookmark;

    move-result-object v0

    .line 970
    if-eqz v0, :cond_0

    .line 977
    invoke-virtual {v0, v1}, Lcom/netflix/model/leafs/Video$Bookmark;->setBookmarkPosition(I)V

    .line 978
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netflix/model/leafs/Video$Bookmark;->setLastModified(J)V

    goto :goto_0

    .line 959
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public updateExpiredContentAdvisoryStatus(Ljava/lang/String;Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;)V
    .locals 1

    .prologue
    .line 1005
    new-instance v0, Lcom/netflix/falkor/task/UpdateExpiryAdvisoryStatusTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/netflix/falkor/task/UpdateExpiryAdvisoryStatusTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Ljava/lang/String;Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory$ContentAction;)V

    invoke-direct {p0, v0}, Lcom/netflix/falkor/CachedModelProxy;->launchTask(Ljava/lang/Runnable;)V

    .line 1006
    return-void
.end method

.method public updateFalkorCacheEnabled()V
    .locals 0

    .prologue
    .line 416
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCacheHelperFactory;->updateFalkorCacheEnabled()V

    .line 417
    return-void
.end method

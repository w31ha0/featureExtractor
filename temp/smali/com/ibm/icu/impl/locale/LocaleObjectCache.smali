.class public abstract Lcom/ibm/icu/impl/locale/LocaleObjectCache;
.super Ljava/lang/Object;
.source "LocaleObjectCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private _map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;",
            "Lcom/ibm/icu/impl/locale/LocaleObjectCache$CacheEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private _queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 20
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, v1, v0, v1}, Lcom/ibm/icu/impl/locale/LocaleObjectCache;-><init>(IFI)V

    .line 21
    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleObjectCache;->_queue:Ljava/lang/ref/ReferenceQueue;

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleObjectCache;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    return-void
.end method

.method private cleanStaleEntries()V
    .locals 2

    .prologue
    .line 62
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleObjectCache;->_queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/locale/LocaleObjectCache$CacheEntry;

    if-eqz v0, :cond_0

    .line 63
    iget-object v1, p0, Lcom/ibm/icu/impl/locale/LocaleObjectCache;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LocaleObjectCache$CacheEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract createObject(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 28
    .line 30
    invoke-direct {p0}, Lcom/ibm/icu/impl/locale/LocaleObjectCache;->cleanStaleEntries()V

    .line 31
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleObjectCache;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/locale/LocaleObjectCache$CacheEntry;

    .line 32
    if-eqz v0, :cond_4

    .line 33
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LocaleObjectCache$CacheEntry;->get()Ljava/lang/Object;

    move-result-object v0

    .line 35
    :goto_0
    if-nez v0, :cond_1

    .line 36
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/locale/LocaleObjectCache;->normalizeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 37
    invoke-virtual {p0, v3}, Lcom/ibm/icu/impl/locale/LocaleObjectCache;->createObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 38
    if-eqz v3, :cond_0

    if-nez v1, :cond_2

    :cond_0
    move-object v0, v2

    .line 56
    :cond_1
    :goto_1
    return-object v0

    .line 43
    :cond_2
    new-instance v2, Lcom/ibm/icu/impl/locale/LocaleObjectCache$CacheEntry;

    iget-object v4, p0, Lcom/ibm/icu/impl/locale/LocaleObjectCache;->_queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, v3, v1, v4}, Lcom/ibm/icu/impl/locale/LocaleObjectCache$CacheEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 45
    :goto_2
    if-nez v0, :cond_1

    .line 46
    invoke-direct {p0}, Lcom/ibm/icu/impl/locale/LocaleObjectCache;->cleanStaleEntries()V

    .line 47
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleObjectCache;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/locale/LocaleObjectCache$CacheEntry;

    .line 48
    if-nez v0, :cond_3

    move-object v0, v1

    .line 50
    goto :goto_1

    .line 52
    :cond_3
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/LocaleObjectCache$CacheEntry;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v2

    goto :goto_0
.end method

.method protected normalizeKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 70
    return-object p1
.end method

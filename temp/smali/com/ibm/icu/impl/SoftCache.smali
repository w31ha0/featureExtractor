.class public abstract Lcom/ibm/icu/impl/SoftCache;
.super Lcom/ibm/icu/impl/CacheBase;
.source "SoftCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/ibm/icu/impl/CacheBase",
        "<TK;TV;TD;>;"
    }
.end annotation


# instance fields
.field private map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/ibm/icu/impl/CacheBase;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/SoftCache;->map:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TD;)TV;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ibm/icu/impl/SoftCache;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_4

    .line 51
    instance-of v1, v0, Lcom/ibm/icu/impl/CacheValue;

    if-nez v1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-object v0

    .line 55
    :cond_1
    check-cast v0, Lcom/ibm/icu/impl/CacheValue;

    .line 56
    invoke-virtual {v0}, Lcom/ibm/icu/impl/CacheValue;->isNull()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    const/4 v0, 0x0

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {v0}, Lcom/ibm/icu/impl/CacheValue;->get()Ljava/lang/Object;

    move-result-object v1

    .line 60
    if-eqz v1, :cond_3

    move-object v0, v1

    .line 61
    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/SoftCache;->createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/CacheValue;->resetIfCleared(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/SoftCache;->createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_5

    invoke-static {}, Lcom/ibm/icu/impl/CacheValue;->futureInstancesWillBeStrong()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v1

    .line 72
    :goto_1
    iget-object v2, p0, Lcom/ibm/icu/impl/SoftCache;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    if-nez v0, :cond_6

    move-object v0, v1

    .line 75
    goto :goto_0

    .line 71
    :cond_5
    invoke-static {v1}, Lcom/ibm/icu/impl/CacheValue;->getInstance(Ljava/lang/Object;)Lcom/ibm/icu/impl/CacheValue;

    move-result-object v0

    goto :goto_1

    .line 80
    :cond_6
    instance-of v2, v0, Lcom/ibm/icu/impl/CacheValue;

    if-eqz v2, :cond_0

    .line 84
    check-cast v0, Lcom/ibm/icu/impl/CacheValue;

    .line 85
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/CacheValue;->resetIfCleared(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

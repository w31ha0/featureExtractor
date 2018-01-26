.class public Lorg/apache/http/impl/client/BasicCookieStore;
.super Ljava/lang/Object;
.source "BasicCookieStore.java"

# interfaces
.implements Lorg/apache/http/client/CookieStore;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x69357431db388559L


# instance fields
.field private final cookies:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lorg/apache/http/cookie/CookieIdentityComparator;

    invoke-direct {v1}, Lorg/apache/http/cookie/CookieIdentityComparator;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookies:Ljava/util/TreeSet;

    .line 56
    return-void
.end method


# virtual methods
.method public declared-synchronized addCookie(Lorg/apache/http/cookie/Cookie;)V
    .locals 1
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;

    .prologue
    .line 69
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 71
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookies:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 72
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-interface {p1, v0}, Lorg/apache/http/cookie/Cookie;->isExpired(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookies:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_0
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addCookies([Lorg/apache/http/cookie/Cookie;)V
    .locals 5
    .param p1, "cookies"    # [Lorg/apache/http/cookie/Cookie;

    .prologue
    .line 89
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 90
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/http/cookie/Cookie;
    :try_start_0
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 91
    .local v1, "cooky":Lorg/apache/http/cookie/Cookie;
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/BasicCookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "arr$":[Lorg/apache/http/cookie/Cookie;
    .end local v1    # "cooky":Lorg/apache/http/cookie/Cookie;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    monitor-exit p0

    return-void

    .line 89
    .restart local v0    # "arr$":[Lorg/apache/http/cookie/Cookie;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookies:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearExpired(Ljava/util/Date;)Z
    .locals 3
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 116
    monitor-enter p0

    if-nez p1, :cond_1

    .line 117
    const/4 v1, 0x0

    .line 126
    :cond_0
    monitor-exit p0

    return v1

    .line 119
    :cond_1
    const/4 v1, 0x0

    .line 120
    .local v1, "removed":Z
    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookies:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/cookie/Cookie;>;"
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/cookie/Cookie;

    invoke-interface {v2, p1}, Lorg/apache/http/cookie/Cookie;->isExpired(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    const/4 v1, 0x1

    goto :goto_0

    .line 116
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/http/cookie/Cookie;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getCookies()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookies:Ljava/util/TreeSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicCookieStore;->cookies:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->toString()Ljava/lang/String;
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

.class public Lorg/apache/http/impl/client/BasicCredentialsProvider;
.super Ljava/lang/Object;
.source "BasicCredentialsProvider.java"

# interfaces
.implements Lorg/apache/http/client/CredentialsProvider;


# annotations
.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# instance fields
.field private final credMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lorg/apache/http/auth/AuthScope;",
            "Lorg/apache/http/auth/Credentials;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/BasicCredentialsProvider;->credMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    return-void
.end method

.method private static matchCredentials(Ljava/util/Map;Lorg/apache/http/auth/AuthScope;)Lorg/apache/http/auth/Credentials;
    .locals 7
    .param p1, "authscope"    # Lorg/apache/http/auth/AuthScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/http/auth/AuthScope;",
            "Lorg/apache/http/auth/Credentials;",
            ">;",
            "Lorg/apache/http/auth/AuthScope;",
            ")",
            "Lorg/apache/http/auth/Credentials;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/auth/Credentials;

    .line 78
    .local v2, "creds":Lorg/apache/http/auth/Credentials;
    if-nez v2, :cond_2

    .line 81
    const/4 v1, -0x1

    .line 82
    .local v1, "bestMatchFactor":I
    const/4 v0, 0x0

    .line 83
    .local v0, "bestMatch":Lorg/apache/http/auth/AuthScope;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/auth/AuthScope;

    .line 84
    .local v3, "current":Lorg/apache/http/auth/AuthScope;
    invoke-virtual {p1, v3}, Lorg/apache/http/auth/AuthScope;->match(Lorg/apache/http/auth/AuthScope;)I

    move-result v4

    .line 85
    .local v4, "factor":I
    if-le v4, v1, :cond_0

    .line 86
    move v1, v4

    .line 87
    move-object v0, v3

    goto :goto_0

    .line 90
    .end local v3    # "current":Lorg/apache/http/auth/AuthScope;
    .end local v4    # "factor":I
    :cond_1
    if-eqz v0, :cond_2

    .line 91
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "creds":Lorg/apache/http/auth/Credentials;
    check-cast v2, Lorg/apache/http/auth/Credentials;

    .line 94
    .end local v0    # "bestMatch":Lorg/apache/http/auth/AuthScope;
    .end local v1    # "bestMatchFactor":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .restart local v2    # "creds":Lorg/apache/http/auth/Credentials;
    :cond_2
    return-object v2
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicCredentialsProvider;->credMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 106
    return-void
.end method

.method public getCredentials(Lorg/apache/http/auth/AuthScope;)Lorg/apache/http/auth/Credentials;
    .locals 2
    .param p1, "authscope"    # Lorg/apache/http/auth/AuthScope;

    .prologue
    .line 98
    if-nez p1, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authentication scope may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicCredentialsProvider;->credMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, p1}, Lorg/apache/http/impl/client/BasicCredentialsProvider;->matchCredentials(Ljava/util/Map;Lorg/apache/http/auth/AuthScope;)Lorg/apache/http/auth/Credentials;

    move-result-object v0

    return-object v0
.end method

.method public setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V
    .locals 2
    .param p1, "authscope"    # Lorg/apache/http/auth/AuthScope;
    .param p2, "credentials"    # Lorg/apache/http/auth/Credentials;

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authentication scope may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicCredentialsProvider;->credMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/http/impl/client/BasicCredentialsProvider;->credMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

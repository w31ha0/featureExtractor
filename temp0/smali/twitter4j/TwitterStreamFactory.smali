.class public final Ltwitter4j/TwitterStreamFactory;
.super Ljava/lang/Object;
.source "TwitterStreamFactory.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x710cabc8cc4cda59L


# instance fields
.field private final conf:Ltwitter4j/conf/Configuration;

.field private final listener:Ltwitter4j/StatusListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    check-cast v0, Ltwitter4j/StatusListener;

    invoke-direct {p0, v0}, Ltwitter4j/TwitterStreamFactory;-><init>(Ltwitter4j/StatusListener;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "configTreePath"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltwitter4j/TwitterStreamFactory;-><init>(Ljava/lang/String;Ltwitter4j/StatusListener;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ltwitter4j/StatusListener;)V
    .locals 1
    .param p1, "configTreePath"    # Ljava/lang/String;
    .param p2, "listener"    # Ltwitter4j/StatusListener;

    .prologue
    .line 85
    invoke-static {p1}, Ltwitter4j/conf/ConfigurationContext;->getInstance(Ljava/lang/String;)Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ltwitter4j/TwitterStreamFactory;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/StatusListener;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ltwitter4j/StatusListener;)V
    .locals 1
    .param p1, "listener"    # Ltwitter4j/StatusListener;

    .prologue
    .line 68
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ltwitter4j/TwitterStreamFactory;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/StatusListener;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ltwitter4j/conf/Configuration;)V
    .locals 1
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltwitter4j/TwitterStreamFactory;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/StatusListener;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ltwitter4j/conf/Configuration;Ltwitter4j/StatusListener;)V
    .locals 2
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;
    .param p2, "listener"    # Ltwitter4j/StatusListener;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    if-nez p1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "configuration cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    iput-object p1, p0, Ltwitter4j/TwitterStreamFactory;->conf:Ltwitter4j/conf/Configuration;

    .line 99
    iput-object p2, p0, Ltwitter4j/TwitterStreamFactory;->listener:Ltwitter4j/StatusListener;

    .line 100
    return-void
.end method

.method private getInstance(Ltwitter4j/conf/Configuration;)Ltwitter4j/TwitterStream;
    .locals 3
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;

    .prologue
    .line 137
    new-instance v0, Ltwitter4j/TwitterStream;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ltwitter4j/http/AuthorizationFactory;->getInstance(Ltwitter4j/conf/Configuration;Z)Ltwitter4j/http/Authorization;

    move-result-object v1

    iget-object v2, p0, Ltwitter4j/TwitterStreamFactory;->listener:Ltwitter4j/StatusListener;

    invoke-direct {v0, p1, v1, v2}, Ltwitter4j/TwitterStream;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;Ltwitter4j/StatusListener;)V

    return-object v0
.end method

.method private getInstance(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;)Ltwitter4j/TwitterStream;
    .locals 2
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;
    .param p2, "auth"    # Ltwitter4j/http/Authorization;

    .prologue
    .line 134
    new-instance v0, Ltwitter4j/TwitterStream;

    iget-object v1, p0, Ltwitter4j/TwitterStreamFactory;->listener:Ltwitter4j/StatusListener;

    invoke-direct {v0, p1, p2, v1}, Ltwitter4j/TwitterStream;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;Ltwitter4j/StatusListener;)V

    return-object v0
.end method


# virtual methods
.method public getInstance()Ltwitter4j/TwitterStream;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Ltwitter4j/TwitterStreamFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {p0, v0}, Ltwitter4j/TwitterStreamFactory;->getInstance(Ltwitter4j/conf/Configuration;)Ltwitter4j/TwitterStream;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/TwitterStream;
    .locals 1
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {p1, p2}, Ltwitter4j/http/AuthorizationFactory;->getBasicAuthorizationInstance(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/http/Authorization;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/TwitterStreamFactory;->getInstance(Ltwitter4j/http/Authorization;)Ltwitter4j/TwitterStream;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ltwitter4j/http/Authorization;)Ltwitter4j/TwitterStream;
    .locals 1
    .param p1, "auth"    # Ltwitter4j/http/Authorization;

    .prologue
    .line 131
    iget-object v0, p0, Ltwitter4j/TwitterStreamFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {p0, v0, p1}, Ltwitter4j/TwitterStreamFactory;->getInstance(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;)Ltwitter4j/TwitterStream;

    move-result-object v0

    return-object v0
.end method

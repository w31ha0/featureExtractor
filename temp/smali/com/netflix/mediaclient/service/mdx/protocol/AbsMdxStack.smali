.class public abstract Lcom/netflix/mediaclient/service/mdx/protocol/AbsMdxStack;
.super Ljava/lang/Object;
.source "AbsMdxStack.java"


# static fields
.field static final MDX_EVENT_LAUNCH_TIMEOUT:I = 0x4

.field static final MDX_EVENT_SET_NETWORK_INTERFACE:I = 0x3

.field static final MDX_EVENT_SOURCE_CAST:I = 0x2

.field static final MDX_EVENT_SOURCE_NATIVE:I = 0x1

.field static final NETWORK_INTERFACE_EVENT_DEALY_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "MdxController"


# instance fields
.field protected final mDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/AbsMdxStack;->mDeviceList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public abstract disable()V
.end method

.method public abstract enable()V
.end method

.method abstract getAbsMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;
.end method

.method public getDeviceList()[Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;
    .locals 3

    .prologue
    .line 22
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/AbsMdxStack;->mDeviceList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/AbsMdxStack;->mDeviceList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getSessionMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/AbsMdxStack;->getAbsMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->getSessionMdxTarget()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected resetAllDeviceStateAndClear()V
    .locals 8

    .prologue
    .line 51
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/AbsMdxStack;->mDeviceList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/AbsMdxStack;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;

    .line 53
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->getSessionMdxTarget()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    const-string/jumbo v3, "MdxController"

    const-string/jumbo v4, "clearAndReset, %s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getUuid()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getFriendlyName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 56
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->unselectTarget()V

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 59
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/AbsMdxStack;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 60
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    return-void
.end method

.method protected resetAllDeviceStateExcept(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 64
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/AbsMdxStack;->mDeviceList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/AbsMdxStack;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;

    .line 66
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->isSameDevice(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    const-string/jumbo v3, "MdxController"

    const-string/jumbo v4, "resetAllDeviceStateExcept, except %s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->getUuid()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 71
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->getSessionMdxTarget()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    const-string/jumbo v3, "MdxController"

    const-string/jumbo v4, "resetAllDeviceState, %s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getUuid()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getFriendlyName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 74
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->unselectTarget()V

    goto :goto_0

    .line 77
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    return-void
.end method

.method public abstract restartDiscovery()V
.end method

.method public abstract setCurrentTargte(Ljava/lang/String;)V
.end method

.method public abstract setMdxNetworkInterface(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
.end method

.class public Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;
.super Lcom/netflix/mediaclient/service/mdx/protocol/AbsMdxStack;
.source "MdxStackCast.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/mdx/cast/CastManagerEventListener;
.implements Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxStackTargetInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "MdxControllerCast"


# instance fields
.field private final mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTragetUuid:Ljava/lang/String;

.field private final mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

.field private final mMslClinet:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

.field private final mNotify:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

.field private final mWorkHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Lcom/netflix/mediaclient/servicemgr/IMSLClient;Lcom/netflix/mediaclient/service/mdx/NotifierInterface;Landroid/os/Looper;Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/AbsMdxStack;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    .line 47
    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mMslClinet:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    .line 48
    iput-object p4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mNotify:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    .line 49
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mWorkHandler:Landroid/os/Handler;

    .line 51
    iput-object p6, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {v0, p0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->setCastManagerEventListener(Lcom/netflix/mediaclient/service/mdx/cast/CastManagerEventListener;)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;)Lcom/netflix/mediaclient/service/mdx/NotifierInterface;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mNotify:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    return-object v0
.end method

.method private getCastMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;
    .locals 4

    .prologue
    .line 234
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mDeviceList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;

    .line 236
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->isSameDevice(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    check-cast v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;

    monitor-exit v1

    .line 241
    :goto_0
    return-object v0

    .line 240
    :cond_1
    monitor-exit v1

    .line 241
    const/4 v0, 0x0

    goto :goto_0

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleCurrentTargetFound(Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mCurrentTragetUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->isSameDevice(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    check-cast p1, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;

    .line 142
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->isTargetLaunched()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->isJoiningOrLaunchingNetflixOnTarget()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const-string/jumbo v0, "MdxControllerCast"

    const-string/jumbo v1, "join Netflix on device %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mCurrentTragetUuid:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 144
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mCurrentTragetUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->launchNetflix(Ljava/lang/String;Z)V

    .line 145
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->setJoiningNetflixOnTarget()V

    .line 148
    :cond_0
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->stop()V

    .line 76
    return-void
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->start()V

    .line 70
    return-void
.end method

.method public getAbsMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->getCastMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;

    move-result-object v0

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public launchNetflix(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 80
    const-string/jumbo v0, "MdxControllerCast"

    const-string/jumbo v1, "launchNetflix %s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {v0, p1, v4}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->launchNetflix(Ljava/lang/String;Z)V

    .line 82
    return-void
.end method

.method public onDeviceFound(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 121
    const-string/jumbo v0, "MdxControllerCast"

    const-string/jumbo v1, "onDeviceFound friendlyName=%s uuid=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v3

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 122
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->getCastMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;

    move-result-object v0

    .line 123
    iget-object v6, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mDeviceList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 124
    if-nez v0, :cond_0

    .line 125
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;)V

    .line 126
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mNotify:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->targetList()V

    .line 128
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uuid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;->onCastDeviceFound(Ljava/lang/String;)V

    .line 129
    const-string/jumbo v1, "MdxControllerCast"

    const-string/jumbo v2, "onDeviceFound, add device %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 130
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2, p3}, Lcom/netflix/mediaclient/util/log/MdxLogUtils;->reportCastDeviceFound(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->handleCurrentTargetFound(Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;)V

    .line 136
    monitor-exit v6

    .line 137
    return-void

    .line 132
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->updateInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string/jumbo v1, "MdxControllerCast"

    const-string/jumbo v2, "onDeviceFound, device %s already existed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDeviceLost(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 152
    const-string/jumbo v0, "MdxControllerCast"

    const-string/jumbo v1, "onDeviceLost uuid=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 154
    invoke-virtual {p0, v3, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->onLaunchResult(ZLjava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mDeviceList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 157
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;

    .line 159
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->isSameDevice(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mCurrentTragetUuid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->isSameDevice(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mNotify:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    const/16 v4, 0xc8

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, p1, v4, v0}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->error(Ljava/lang/String;ILjava/lang/String;)V

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mNotify:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->targetList()V

    .line 164
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 165
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uuid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;->onCastDeviceLost(Ljava/lang/String;)V

    .line 169
    :cond_2
    monitor-exit v1

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onLaunchResult(ZLjava/lang/String;)V
    .locals 5

    .prologue
    .line 174
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->getCastMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_0

    .line 176
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mMslClinet:Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mNotify:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    invoke-virtual {v0, p1, v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->notifyLaunchResult(ZLcom/netflix/mediaclient/servicemgr/IMSLClient;Lcom/netflix/mediaclient/service/mdx/NotifierInterface;)V

    .line 181
    :goto_0
    return-void

    .line 178
    :cond_0
    const-string/jumbo v1, "MdxControllerCast"

    const-string/jumbo v2, "launch %s %s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v3, v0

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    const-string/jumbo v0, "success"

    :goto_1
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "failed"

    goto :goto_1
.end method

.method public onMessageReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 201
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->getCastMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;

    move-result-object v0

    .line 202
    if-nez v0, :cond_0

    .line 203
    const-string/jumbo v0, "MdxControllerCast"

    const-string/jumbo v1, "onMessageReceived, no target to handle message. %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 231
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->getSessionMdxTarget()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    .line 207
    if-nez v0, :cond_1

    .line 209
    const-string/jumbo v0, "MdxControllerCast"

    const-string/jumbo v1, "onMessageReceived, no target to handle message. %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v4

    aput-object p3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 212
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxMessageUtils;->convertMsgToJSON(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 213
    const-string/jumbo v2, "/pairingresponse"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "/regpairreply"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "/regpairerror"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 216
    :cond_2
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->handlePairingResult(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    const-string/jumbo v1, "MdxControllerCast"

    const-string/jumbo v2, "handleIncommingMdxMessage, JSONException %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 217
    :cond_3
    :try_start_1
    const-string/jumbo v2, "/session"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 218
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->handleIncomingSessionMessage(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 219
    :cond_4
    const-string/jumbo v2, "/broadcast"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 220
    const-string/jumbo v0, "MdxControllerCast"

    const-string/jumbo v1, "onMessageReceived, CAST not handle broadcast message"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    :cond_5
    const-string/jumbo v2, "/error"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 222
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->handleIncomingErrorMessage(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 225
    :cond_6
    const-string/jumbo v0, "MdxControllerCast"

    const-string/jumbo v1, "onMessageReceived, not handling %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onSendMessageResult(ZLjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 186
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->getCastMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;

    move-result-object v0

    .line 187
    if-nez v0, :cond_0

    .line 188
    const-string/jumbo v0, "MdxControllerCast"

    const-string/jumbo v1, "onSendMessageResult, no target to handle message. %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 197
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->getSessionMdxTarget()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->handleSendMessageResult(Z)V

    goto :goto_0

    .line 195
    :cond_1
    const-string/jumbo v0, "MdxControllerCast"

    const-string/jumbo v1, "onSendMessageResult, no target to handle message. %s %b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public restartDiscovery()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->restartCastDiscoveryIfNeeded()V

    .line 96
    return-void
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mCastManager:Lcom/netflix/mediaclient/service/mdx/cast/CastManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/cast/CastManager;->sendMessage(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public setCurrentTargte(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mCurrentTragetUuid:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mCurrentTragetUuid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->resetAllDeviceStateExcept(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public setMdxNetworkInterface(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 100
    const-string/jumbo v0, "MdxControllerCast"

    const-string/jumbo v1, "setMdxNetworkInterface %s %b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast$1;

    invoke-direct {v1, p0, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast$1;-><init>(Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    return-void
.end method

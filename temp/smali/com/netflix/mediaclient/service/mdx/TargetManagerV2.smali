.class public Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;
.super Ljava/lang/Object;
.source "TargetManagerV2.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/mdx/CommandInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "MdxTargetManagerV2"


# instance fields
.field private final mEsn:Ljava/lang/String;

.field private final mLooper:Landroid/os/Looper;

.field private mMdxStackCast:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;

.field private mMdxStackNetflix:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

.field private final mNotify:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/NotifierInterface;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mNotify:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    .line 53
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mEsn:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mLooper:Landroid/os/Looper;

    .line 55
    return-void
.end method

.method private getAbsMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 198
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackCast:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;

    if-nez v1, :cond_1

    move-object v1, v0

    .line 199
    :goto_0
    if-eqz v1, :cond_2

    move-object v0, v1

    .line 202
    :cond_0
    :goto_1
    return-object v0

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackCast:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->getAbsMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;

    move-result-object v1

    goto :goto_0

    .line 202
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackNetflix:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackNetflix:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->getAbsMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;

    move-result-object v0

    goto :goto_1
.end method

.method private getSessionMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getAbsMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->getSessionMdxTarget()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    .line 210
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addCast(Landroid/content/Context;Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Lcom/netflix/mediaclient/servicemgr/IMSLClient;Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;)V
    .locals 7

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackCast:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mNotify:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mLooper:Landroid/os/Looper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/mdx/cast/CastManager;Lcom/netflix/mediaclient/servicemgr/IMSLClient;Lcom/netflix/mediaclient/service/mdx/NotifierInterface;Landroid/os/Looper;Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackCast:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;

    .line 62
    :cond_0
    return-void
.end method

.method public addNetflixMdx(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IMSLClient;ZLorg/json/JSONArray;Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;)V
    .locals 9

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackNetflix:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mNotify:Lcom/netflix/mediaclient/service/mdx/NotifierInterface;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mLooper:Landroid/os/Looper;

    iget-object v7, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mEsn:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IMSLClient;Lcom/netflix/mediaclient/service/mdx/NotifierInterface;Landroid/os/Looper;ZLorg/json/JSONArray;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackNetflix:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    .line 69
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackCast:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackCast:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->destroy()V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackNetflix:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackNetflix:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->destroy()V

    .line 188
    :cond_1
    return-void
.end method

.method public disconnectTargetOnUserAction(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getAbsMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    .line 133
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->disconnectSessionTarget(Z)V

    .line 135
    :cond_0
    return-void
.end method

.method public getTargetCapabilities(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;
    .locals 1

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getSessionMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    .line 395
    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getCapbilities()Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;

    move-result-object v0

    .line 398
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTargetList()[Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 138
    .line 139
    new-array v0, v2, [Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;

    .line 140
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackCast:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;

    if-eqz v1, :cond_4

    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackCast:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->getDeviceList()[Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;

    move-result-object v0

    .line 142
    array-length v1, v0

    add-int/2addr v1, v2

    .line 144
    :goto_0
    new-array v3, v2, [Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;

    .line 145
    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackNetflix:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    if-eqz v4, :cond_3

    .line 146
    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackNetflix:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->getDeviceList()[Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;

    move-result-object v3

    .line 147
    array-length v4, v3

    add-int/2addr v1, v4

    move-object v6, v3

    .line 150
    :goto_1
    if-lez v1, :cond_2

    .line 151
    new-array v1, v1, [Landroid/util/Pair;

    .line 153
    array-length v7, v0

    move v4, v2

    move v3, v2

    :goto_2
    if-ge v4, v7, :cond_0

    aget-object v8, v0, v4

    .line 154
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v8}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->getUuid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->getFriendlyName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    aput-object v8, v1, v3

    .line 153
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v5

    goto :goto_2

    .line 157
    :cond_0
    array-length v4, v6

    move v0, v3

    :goto_3
    if-ge v2, v4, :cond_1

    aget-object v5, v6, v2

    .line 158
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->getFriendlyName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    aput-object v5, v1, v0

    .line 157
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_3

    :cond_1
    move-object v0, v1

    .line 162
    :goto_4
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_4

    :cond_3
    move-object v6, v3

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getTimeOfMostRecentIncomingMessage(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getSessionMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    .line 378
    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getTimeOfMostRecentIncomingMessage()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 381
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getVideoIds(Ljava/lang/String;)Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;
    .locals 1

    .prologue
    .line 404
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getSessionMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    .line 405
    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getVideoIds()Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;

    move-result-object v0

    .line 408
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActiveSession(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getSessionMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    .line 367
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->hasActivePlaybackSession()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTargetHaveContext(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getSessionMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTargetLaunchingOrLaunched(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getSessionMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSessionGone(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getAbsMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->disconnectSessionTarget(Z)V

    .line 128
    :cond_0
    return-void
.end method

.method public pinCancelled(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getSessionMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_0

    .line 347
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PinCancelled;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PinCancelled;-><init>()V

    .line 348
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->sendCommand(Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;)V

    .line 350
    :cond_0
    return-void
.end method

.method public pinConfirmed(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getSessionMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_0

    .line 339
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PinConfirmed;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PinConfirmed;-><init>()V

    .line 340
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->sendCommand(Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;)V

    .line 342
    :cond_0
    return-void
.end method

.method public playerAutoAdvance(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 295
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getSessionMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_0

    .line 297
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerSetAutoAdvance;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getTargetPlaybackSessionToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerSetAutoAdvance;-><init>(Ljava/lang/String;I)V

    .line 298
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->sendCommand(Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;)V

    .line 300
    :cond_0
    return-void
.end method

.method public playerChangeMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getSessionMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_0

    .line 323
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerChangeMetaData;

    invoke-direct {v1, p2, p3, p4}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerChangeMetaData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->sendCommand(Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;)V

    .line 326
    :cond_0
    return-void
.end method

.method public playerDialogReponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getSessionMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_0

    .line 314
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/DialogResponse;

    invoke-direct {v1, p2, p3}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/DialogResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->sendCommand(Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;)V

    .line 317
    :cond_0
    return-void
.end method

.method public playerGetAudioSubtitle(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getSessionMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_0

    .line 331
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/GetAudioSubtitles;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/GetAudioSubtitles;-><init>()V

    .line 332
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->sendCommand(Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;)V

    .line 334
    :cond_0
    return-void
.end method

.method public playerGetCapability(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getSessionMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_0

    .line 218
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerGetCapabilities;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerGetCapabilities;-><init>()V

    .line 219
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->sendCommand(Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;)V

    .line 221
    :cond_0
    return-void
.end method

.method public playerGetCurrentState(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getSessionMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_0

    .line 226
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerGetCurrentState;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerGetCurrentState;-><init>()V

    .line 227
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->sendCommand(Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;)V

    .line 228
    :cond_0
    return-void
.end method

.method public playerPause(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getSessionMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_0

    .line 258
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerPause;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getTargetPlaybackSessionToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerPause;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->sendCommand(Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;)V

    .line 260
    :cond_0
    return-void
.end method

.method public playerPlay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V
    .locals 8

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getSessionMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v7

    .line 240
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerPlay;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mEsn:Ljava/lang/String;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p2

    move v2, p3

    move-object v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerPlay;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 241
    if-eqz v7, :cond_1

    .line 242
    invoke-virtual {v7, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->sendCommand(Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;)V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getAbsMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;

    move-result-object v1

    .line 249
    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->sendCommand(Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;)V

    goto :goto_0
.end method

.method public playerResume(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getSessionMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_0

    .line 265
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerResume;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getTargetPlaybackSessionToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerResume;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->sendCommand(Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;)V

    .line 268
    :cond_0
    return-void
.end method

.method public playerSeek(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getSessionMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_0

    .line 289
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerSetCurrentTime;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getTargetPlaybackSessionToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerSetCurrentTime;-><init>(Ljava/lang/String;I)V

    .line 290
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->sendCommand(Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;)V

    .line 292
    :cond_0
    return-void
.end method

.method public playerSetAudioSubtitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getSessionMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_0

    .line 306
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/SetAudioSubtitles;

    invoke-direct {v1, p2, p3}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/SetAudioSubtitles;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->sendCommand(Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;)V

    .line 309
    :cond_0
    return-void
.end method

.method public playerSetVolume(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getSessionMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_0

    .line 233
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerSetVolume;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getTargetPlaybackSessionToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerSetVolume;-><init>(Ljava/lang/String;I)V

    .line 234
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->sendCommand(Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;)V

    .line 235
    :cond_0
    return-void
.end method

.method public playerSkip(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getSessionMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_0

    .line 281
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerSkip;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getTargetPlaybackSessionToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerSkip;-><init>(Ljava/lang/String;I)V

    .line 282
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->sendCommand(Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;)V

    .line 284
    :cond_0
    return-void
.end method

.method public playerStop(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getSessionMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_0

    .line 273
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerStop;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getTargetPlaybackSessionToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerStop;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->sendCommand(Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;)V

    .line 276
    :cond_0
    return-void
.end method

.method public playerStopPostplay(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getSessionMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    .line 354
    if-eqz v0, :cond_0

    .line 355
    new-instance v1, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PostplayStop;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getTargetPlaybackSessionToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PostplayStop;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->sendCommand(Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;)V

    .line 358
    :cond_0
    return-void
.end method

.method public restartDiscovery()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackCast:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackCast:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->restartDiscovery()V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackNetflix:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackNetflix:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->restartDiscovery()V

    .line 196
    :cond_1
    return-void
.end method

.method public selectTarget(Ljava/lang/String;Z)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 93
    const-string/jumbo v0, "MdxTargetManagerV2"

    const-string/jumbo v1, "selectTarget %s %b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 94
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackCast:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackCast:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->setCurrentTargte(Ljava/lang/String;)V

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackNetflix:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackNetflix:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->setCurrentTargte(Ljava/lang/String;)V

    .line 104
    :goto_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getAbsMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    .line 106
    instance-of v1, v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget;

    if-eqz v1, :cond_3

    .line 107
    const-string/jumbo v1, "MdxTargetManagerV2"

    const-string/jumbo v2, "selectTarget, need launch"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    check-cast v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget;

    invoke-interface {v0, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget;->launchTarget(Z)Z

    .line 120
    :cond_0
    :goto_2
    return v4

    .line 97
    :cond_1
    const-string/jumbo v0, "MdxTargetManagerV2"

    const-string/jumbo v1, "selectTarget, cast mdx is not ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :cond_2
    const-string/jumbo v0, "MdxTargetManagerV2"

    const-string/jumbo v1, "selectTarget, netflix mdx is not ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 110
    :cond_3
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->getSessionMdxTarget(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_4

    .line 112
    const-string/jumbo v1, "MdxTargetManagerV2"

    const-string/jumbo v2, "selectTarget, contact mdx target"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->selectTarget(Z)V

    goto :goto_2

    .line 116
    :cond_4
    const-string/jumbo v0, "MdxTargetManagerV2"

    const-string/jumbo v1, "BUG!!! selectTarget failed %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method

.method public setMdxNetworkInterface(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 165
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const-string/jumbo p1, "UNKNOWN-NAME"

    .line 168
    :cond_0
    invoke-static {p4}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    const-string/jumbo p4, "UNKNOWN-SSID"

    .line 171
    :cond_1
    invoke-static {p3}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    const-string/jumbo p3, "0.0.0.0"

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackCast:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackCast:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->setMdxNetworkInterface(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackNetflix:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    if-eqz v0, :cond_4

    .line 178
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackNetflix:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->setMdxNetworkInterface(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_4
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 72
    const-string/jumbo v0, "MdxTargetManagerV2"

    const-string/jumbo v1, "start MDX"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackCast:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackCast:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->enable()V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackNetflix:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackNetflix:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->enable()V

    .line 79
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 82
    const-string/jumbo v0, "MdxTargetManagerV2"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->selectTarget(Ljava/lang/String;Z)Z

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackCast:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackCast:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->disable()V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackNetflix:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetManagerV2;->mMdxStackNetflix:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->disable()V

    .line 90
    :cond_1
    return-void
.end method

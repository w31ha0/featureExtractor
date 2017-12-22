.class public Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;
.super Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;
.source "CastMdxTarget.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget;


# static fields
.field private static final TAG:Ljava/lang/String; = "MdxTargetCast"


# instance fields
.field private mJoiningOrLaunching:Z

.field private mLaunchErrorReported:Z

.field private mMdxStackCast:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;)V

    .line 24
    iput-object p4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->mMdxStackCast:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;

    .line 25
    return-void
.end method


# virtual methods
.method public getLaunchType()Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;->CAST:Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;

    return-object v0
.end method

.method public getSessionMdxTarget()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->mSessionMdxTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    return-object v0
.end method

.method public isJoiningOrLaunchingNetflixOnTarget()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->mJoiningOrLaunching:Z

    return v0
.end method

.method public isTargetLaunched()Z
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->mSessionMdxTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchTarget(Z)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->mLaunchErrorReported:Z

    .line 35
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->mLaunchedByUser:Z

    .line 36
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->isTargetLaunched()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string/jumbo v0, "MdxTargetCast"

    const-string/jumbo v1, "launchTarget, already launched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->getSessionMdxTarget()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->mLaunchedByUser:Z

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->selectTarget(Z)V

    .line 44
    :goto_0
    return v2

    .line 40
    :cond_0
    const-string/jumbo v0, "MdxTargetCast"

    const-string/jumbo v1, "launchTarget, will launch"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->mMdxStackCast:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;->launchNetflix(Ljava/lang/String;)V

    .line 42
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->mJoiningOrLaunching:Z

    goto :goto_0
.end method

.method public notifyLaunchResult(ZLcom/netflix/mediaclient/servicemgr/IMSLClient;Lcom/netflix/mediaclient/service/mdx/NotifierInterface;)V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 54
    const-string/jumbo v0, "MdxTargetCast"

    const-string/jumbo v1, "notifyLaunchResult %s %b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->getUuid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 55
    iput-boolean v4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->mJoiningOrLaunching:Z

    .line 56
    if-nez p1, :cond_3

    .line 57
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->isTargetLaunched()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->mLaunchedByUser:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->mLaunchErrorReported:Z

    if-nez v0, :cond_1

    .line 58
    iput-boolean v5, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->mLaunchErrorReported:Z

    .line 59
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->getUuid()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->error(Ljava/lang/String;ILjava/lang/String;)V

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->mSessionMdxTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->mSessionMdxTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->unselectTarget()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->mSessionMdxTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    .line 73
    :cond_2
    :goto_0
    return-void

    .line 65
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->isTargetLaunched()Z

    move-result v0

    if-nez v0, :cond_2

    .line 66
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->getLocation()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->mMdxStackCast:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackCast;

    iget-object v7, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxStackTargetInterface;Lcom/netflix/mediaclient/servicemgr/IMSLClient;Lcom/netflix/mediaclient/service/mdx/NotifierInterface;Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->mSessionMdxTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    .line 67
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->getSessionMdxTarget()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->mLaunchedByUser:Z

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->selectTarget(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->getAndConsumeCachedCommand()Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->getSessionMdxTarget()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->sendCommand(Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;)V

    goto :goto_0
.end method

.method public setJoiningNetflixOnTarget()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;->mJoiningOrLaunching:Z

    .line 82
    return-void
.end method

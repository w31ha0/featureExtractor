.class public Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;
.super Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;
.source "DialMdxTarget.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget;


# static fields
.field private static final TAG:Ljava/lang/String; = "MdxTargetDial"


# instance fields
.field private mLaunchErrorReported:Z

.field private mLaunchStatus:I

.field private final mMdxStackDial:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->mLaunchStatus:I

    .line 24
    iput-object p4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->mMdxStackDial:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    .line 25
    return-void
.end method


# virtual methods
.method public getLaunchType()Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;->DIAL:Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;

    return-object v0
.end method

.method public getSessionMdxTarget()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->mSessionMdxTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    return-object v0
.end method

.method public isLaunchStatusChanged(I)Z
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->mLaunchStatus:I

    if-eq p1, v0, :cond_0

    .line 101
    iput p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->mLaunchStatus:I

    .line 102
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSameDevice(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 28
    invoke-super {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    :cond_0
    :goto_0
    return v0

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->mSessionMdxTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->mSessionMdxTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTargetLaunched()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->mSessionMdxTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchTarget(Z)Z
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->mLaunchErrorReported:Z

    .line 45
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->mLaunchedByUser:Z

    .line 46
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->isTargetLaunched()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    const-string/jumbo v0, "MdxTargetDial"

    const-string/jumbo v1, "launchTarget, already launched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->getSessionMdxTarget()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->mLaunchedByUser:Z

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->selectTarget(Z)V

    .line 53
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 49
    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->mLaunchedByUser:Z

    if-eqz v0, :cond_0

    .line 50
    const-string/jumbo v0, "MdxTargetDial"

    const-string/jumbo v1, "launchTarget, will launch"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->mMdxStackDial:Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/MdxStackNetflix;->launchNetflix(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public mdxDeviceIsLost()V
    .locals 5

    .prologue
    .line 84
    const-string/jumbo v0, "MdxTargetDial"

    const-string/jumbo v1, "SessionMdxTarget lost %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->mSessionMdxTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->mSessionMdxTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->unselectTarget()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->mSessionMdxTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    .line 89
    :cond_0
    return-void
.end method

.method public notifyLaunchResult(ZLcom/netflix/mediaclient/servicemgr/IMSLClient;Lcom/netflix/mediaclient/service/mdx/NotifierInterface;)V
    .locals 3

    .prologue
    .line 63
    if-nez p1, :cond_2

    .line 64
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->isTargetLaunched()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->mLaunchedByUser:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->mLaunchErrorReported:Z

    if-nez v0, :cond_1

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->mLaunchErrorReported:Z

    .line 66
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->getUuid()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/NotifierInterface;->error(Ljava/lang/String;ILjava/lang/String;)V

    .line 77
    :cond_1
    :goto_0
    return-void

    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->isTargetLaunched()Z

    move-result v0

    if-nez v0, :cond_3

    .line 69
    const-string/jumbo v0, "MdxTargetDial"

    const-string/jumbo v1, "launch success full, but no session target. BUG!!!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->getSessionMdxTarget()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->mLaunchedByUser:Z

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->selectTarget(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->getAndConsumeCachedCommand()Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->getSessionMdxTarget()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->sendCommand(Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;)V

    goto :goto_0
.end method

.method public setSessionMdxTarget(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/DialMdxTarget;->mSessionMdxTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    .line 92
    return-void
.end method

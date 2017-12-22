.class public abstract Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;
.super Ljava/lang/Object;
.source "AbsMdxTarget.java"


# static fields
.field private static mControllerIpa:Ljava/lang/String;

.field private static mControlleruuid:Ljava/lang/String;


# instance fields
.field private mCachedCommand:Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;

.field private mFriendlyName:Ljava/lang/String;

.field protected mLaunchedByUser:Z

.field private mLocation:Ljava/lang/String;

.field protected final mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

.field protected mSessionMdxTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

.field private final mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->mUuid:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->mFriendlyName:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->mLocation:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->mMdxLogblobLogger:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;

    .line 27
    return-void
.end method

.method protected static getmControllerIpa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->mControllerIpa:Ljava/lang/String;

    return-object v0
.end method

.method protected static getmControlleruuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->mControlleruuid:Ljava/lang/String;

    return-object v0
.end method

.method public static setControllerIpa(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    sput-object p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->mControllerIpa:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public static setControlleruuid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    sput-object p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->mControlleruuid:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public disconnectSessionTarget(Z)V
    .locals 1

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->mLaunchedByUser:Z

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->mSessionMdxTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->mSessionMdxTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->unselectTarget()V

    .line 90
    instance-of v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/CastMdxTarget;

    if-eqz v0, :cond_1

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->mSessionMdxTarget:Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    .line 94
    :cond_1
    return-void
.end method

.method protected getAndConsumeCachedCommand()Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->mCachedCommand:Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->mCachedCommand:Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;

    .line 54
    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->mFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getSessionMdxTarget()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method public isSameDevice(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->mUuid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public sendCommand(Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->mCachedCommand:Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;

    .line 50
    return-void
.end method

.method public updateFriendlyName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->mFriendlyName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public updateInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->mLocation:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/AbsMdxTarget;->mFriendlyName:Ljava/lang/String;

    .line 76
    return-void
.end method

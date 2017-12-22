.class public Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;
.super Ljava/lang/Object;
.source "MdxLogblobLogger.java"


# instance fields
.field private final mLogger:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;->mLogger:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    .line 20
    return-void
.end method


# virtual methods
.method public onApplicationStopped(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->APPLICATION_STOPPED:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->info:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    invoke-direct {v0, v1, p1, v2}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;-><init>(Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;)V

    .line 25
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;->mLogger:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 26
    return-void
.end method

.method public onCastDeviceFound(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public onCastDeviceLost(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public onCustomerSupportCastDiscoveryIssue(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 84
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->CAST_DEVICE_LOST:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->error:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    invoke-direct {v0, v1, p1, v2}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;-><init>(Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;)V

    .line 85
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;->mLogger:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 86
    return-void
.end method

.method public onFailToConnect(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public onFailToLaunch(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->FAIL_TO_LAUNCH:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->error:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    invoke-direct {v0, v1, p1, v2}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;-><init>(Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;)V

    .line 37
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;->mLogger:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 38
    return-void
.end method

.method public onFailToSendMessage(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->FAIL_TO_SEND_MESSAGE:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->error:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    invoke-direct {v0, v1, p1, v2}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;-><init>(Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;)V

    .line 43
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;->mLogger:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 44
    return-void
.end method

.method public onNetflixMdxDeviceFound(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public onNetflixMdxDeviceLost(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public onPairingFailed(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 90
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->PAIRING_FAILED:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;->error:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    invoke-direct {v0, v1, p1, v2}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;-><init>(Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;)V

    .line 91
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;->mLogger:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 92
    return-void
.end method

.method public onSessionMdxTargetError(Lcom/netflix/mediaclient/service/mdx/protocol/target/TargetStateDef$SessionMessageType;)V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public onStartMdx()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->START_MDX:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;-><init>(Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;)V

    .line 55
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;->mLogger:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 56
    return-void
.end method

.method public onStopMdx()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;->STOP_MDX:Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob;-><init>(Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblob$LogBlobEvent;)V

    .line 49
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/logging/MdxLogblobLogger;->mLogger:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 50
    return-void
.end method

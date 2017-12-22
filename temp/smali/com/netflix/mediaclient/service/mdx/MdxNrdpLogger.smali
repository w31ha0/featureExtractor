.class public Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;
.super Ljava/lang/Object;
.source "MdxNrdpLogger.java"


# static fields
.field private static final MDX_LOG_TYPE:Ljava/lang/String; = "mdx"


# instance fields
.field private mLogger:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;->mLogger:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    .line 11
    return-void
.end method


# virtual methods
.method public logDebug(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 14
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;->mLogger:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/LogArguments;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->DEBUG:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    const-string/jumbo v2, "mdx"

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/LogArguments;-><init>(Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;->mLogger:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/LogArguments;)V

    .line 18
    :cond_0
    return-void
.end method

.method public logError(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 21
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;->mLogger:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/LogArguments;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->ERROR:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    const-string/jumbo v2, "mdx"

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/LogArguments;-><init>(Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxNrdpLogger;->mLogger:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/LogArguments;)V

    .line 25
    :cond_0
    return-void
.end method

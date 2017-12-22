.class Lcom/netflix/mediaclient/service/logging/LoggingAgentHelper;
.super Ljava/lang/Object;
.source "LoggingAgentHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createLogblobLogging(Landroid/content/Context;Lcom/netflix/mediaclient/service/logging/LoggingAgent;)Lcom/netflix/mediaclient/service/logging/AbstractLogBlogLogging;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl;-><init>(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)V

    return-object v0
.end method

.method static createPdsLogging(Landroid/content/Context;Lcom/netflix/mediaclient/service/logging/LoggingAgent;)Lcom/netflix/mediaclient/service/logging/AbstractPdsLogging;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/logging/PdsLoggingImpl;-><init>(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)V

    return-object v0
.end method

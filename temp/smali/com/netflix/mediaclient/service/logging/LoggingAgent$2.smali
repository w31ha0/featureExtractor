.class Lcom/netflix/mediaclient/service/logging/LoggingAgent$2;
.super Ljava/lang/Object;
.source "LoggingAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/LoggingAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent$2;->this$0:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/LoggingAgent$2;->this$0:Lcom/netflix/mediaclient/service/logging/LoggingAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/LoggingAgent;->access$000(Lcom/netflix/mediaclient/service/logging/LoggingAgent;)V

    .line 205
    return-void
.end method

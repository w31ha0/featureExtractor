.class Lcom/netflix/mediaclient/service/msl/MSLAgent$3;
.super Ljava/lang/Object;
.source "MSLAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/msl/MSLAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/msl/MSLAgent;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent$3;->this$0:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent$3;->this$0:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->access$100(Lcom/netflix/mediaclient/service/msl/MSLAgent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v0

    .line 344
    const-string/jumbo v1, "nf_msl_agent"

    const-string/jumbo v2, "Failed to execute AppBoot on %d retry"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent$3;->this$0:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    invoke-static {v5}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->access$200(Lcom/netflix/mediaclient/service/msl/MSLAgent;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.class Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$12;
.super Ljava/lang/Object;
.source "PreAppAgentDataHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

.field final synthetic val$loadCallback:Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;)V
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$12;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$12;->val$loadCallback:Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 585
    invoke-static {}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->access$600()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$12;->val$loadCallback:Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository;->startLoadFromDisk(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;)V

    .line 586
    return-void
.end method

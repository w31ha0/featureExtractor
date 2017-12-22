.class Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$10$1;
.super Ljava/lang/Object;
.source "PreAppAgentDataHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$10;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$10;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$10$1;->this$1:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$10$1;->this$1:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$10;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$10;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    invoke-static {}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->access$600()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$10$1;->this$1:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$10;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$10;->val$updateType:Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->access$1200(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Landroid/content/Context;Lcom/netflix/mediaclient/service/preapp/PreAppAgentEventType;)V

    .line 303
    return-void
.end method

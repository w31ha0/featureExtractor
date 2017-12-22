.class Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$11;
.super Ljava/lang/Object;
.source "PreAppAgentDataHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

.field final synthetic val$callback:Lcom/netflix/mediaclient/util/data/DataRepository$DataSavedCallback;

.field final synthetic val$newData:Lcom/netflix/mediaclient/service/pservice/PDiskData;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/util/data/DataRepository$DataSavedCallback;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$11;->this$0:Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$11;->val$newData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$11;->val$callback:Lcom/netflix/mediaclient/util/data/DataRepository$DataSavedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 315
    invoke-static {}, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler;->access$600()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$11;->val$newData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->toJsonString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/preapp/PreAppAgentDataHandler$11;->val$callback:Lcom/netflix/mediaclient/util/data/DataRepository$DataSavedCallback;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository;->saveData(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/util/data/DataRepository$DataSavedCallback;)V

    .line 316
    return-void
.end method

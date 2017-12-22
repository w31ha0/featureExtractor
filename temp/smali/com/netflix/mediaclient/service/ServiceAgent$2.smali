.class Lcom/netflix/mediaclient/service/ServiceAgent$2;
.super Ljava/lang/Object;
.source "ServiceAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/ServiceAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/ServiceAgent;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/netflix/mediaclient/service/ServiceAgent$2;->this$0:Lcom/netflix/mediaclient/service/ServiceAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/netflix/mediaclient/service/ServiceAgent$2;->this$0:Lcom/netflix/mediaclient/service/ServiceAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/ServiceAgent;->access$200(Lcom/netflix/mediaclient/service/ServiceAgent;)Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/ServiceAgent$2;->this$0:Lcom/netflix/mediaclient/service/ServiceAgent;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/ServiceAgent$2;->this$0:Lcom/netflix/mediaclient/service/ServiceAgent;

    .line 164
    invoke-static {v2}, Lcom/netflix/mediaclient/service/ServiceAgent;->access$100(Lcom/netflix/mediaclient/service/ServiceAgent;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v2

    .line 163
    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/ServiceAgent$InitCallback;->onInitComplete(Lcom/netflix/mediaclient/service/ServiceAgent;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 165
    return-void
.end method

.class Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$3;
.super Ljava/lang/Object;
.source "LinphoneVoipEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;)V
    .locals 0

    .prologue
    .line 953
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$3;->this$0:Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$3;->this$0:Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->access$300(Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;)V

    .line 957
    return-void
.end method

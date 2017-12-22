.class Lcom/netflix/mediaclient/service/player/nrdpplayback/PlayParamsReceiver$2;
.super Ljava/lang/Object;
.source "PlayParamsReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/PlayParamsReceiver;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/PlayParamsReceiver;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/PlayParamsReceiver$2;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/PlayParamsReceiver;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/PlayParamsReceiver$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/PlayParamsReceiver$2;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/PlayParamsReceiver;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/PlayParamsReceiver$2;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/PlayParamsReceiver;->access$100(Lcom/netflix/mediaclient/service/player/nrdpplayback/PlayParamsReceiver;Landroid/content/Intent;)V

    .line 90
    return-void
.end method

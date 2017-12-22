.class Lcom/netflix/mediaclient/service/msl/MSLAgent$TesterReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MSLAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/msl/MSLAgent;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/msl/MSLAgent;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent$TesterReceiver;->this$0:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/msl/MSLAgent;Lcom/netflix/mediaclient/service/msl/MSLAgent$1;)V
    .locals 0

    .prologue
    .line 565
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/msl/MSLAgent$TesterReceiver;-><init>(Lcom/netflix/mediaclient/service/msl/MSLAgent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 574
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 575
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.DEBUG_MSL_TEST_USER_RECOVERY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/MSLAgent$TesterReceiver;->this$0:Lcom/netflix/mediaclient/service/msl/MSLAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/msl/MSLAgent;->access$400(Lcom/netflix/mediaclient/service/msl/MSLAgent;)V

    .line 578
    :cond_0
    return-void
.end method

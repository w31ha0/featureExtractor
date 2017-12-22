.class Lcom/netflix/mediaclient/service/voip/CallNotificationManager$3;
.super Ljava/lang/Object;
.source "CallNotificationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/voip/CallNotificationManager;

.field final synthetic val$service:Lcom/netflix/mediaclient/service/NetflixService;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/voip/CallNotificationManager;Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/CallNotificationManager$3;->this$0:Lcom/netflix/mediaclient/service/voip/CallNotificationManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/voip/CallNotificationManager$3;->val$service:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/CallNotificationManager$3;->val$service:Lcom/netflix/mediaclient/service/NetflixService;

    const/16 v1, 0x14

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/NetflixService;->requestBackgroundForNotification(IZ)V

    .line 88
    return-void
.end method

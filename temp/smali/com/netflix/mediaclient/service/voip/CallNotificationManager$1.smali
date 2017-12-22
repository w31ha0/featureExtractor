.class Lcom/netflix/mediaclient/service/voip/CallNotificationManager$1;
.super Ljava/lang/Object;
.source "CallNotificationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/voip/CallNotificationManager;

.field final synthetic val$notification:Landroid/app/Notification;

.field final synthetic val$service:Lcom/netflix/mediaclient/service/NetflixService;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/voip/CallNotificationManager;Lcom/netflix/mediaclient/service/NetflixService;Landroid/app/Notification;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/CallNotificationManager$1;->this$0:Lcom/netflix/mediaclient/service/voip/CallNotificationManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/voip/CallNotificationManager$1;->val$service:Lcom/netflix/mediaclient/service/NetflixService;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/voip/CallNotificationManager$1;->val$notification:Landroid/app/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/CallNotificationManager$1;->val$service:Lcom/netflix/mediaclient/service/NetflixService;

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/CallNotificationManager$1;->val$notification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/NetflixService;->requestForegroundForNotification(ILandroid/app/Notification;)V

    .line 57
    return-void
.end method

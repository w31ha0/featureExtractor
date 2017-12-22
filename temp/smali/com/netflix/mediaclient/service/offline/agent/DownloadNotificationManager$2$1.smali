.class Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$2$1;
.super Ljava/lang/Object;
.source "DownloadNotificationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$2;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$2;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$2$1;->this$1:Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$2;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 512
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$2$1;->this$1:Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$2;->val$notificationData:Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$2$1;->this$1:Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$2;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$2;->this$0:Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;

    invoke-static {v2}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->access$100(Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;)I

    move-result v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$2$1;->this$1:Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$2;

    iget-object v3, v3, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$2;->this$0:Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;->access$200(Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/AndroidUtils;->createScaledBitmapWithAspectRatio(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mBoxShot:Landroid/graphics/Bitmap;

    .line 513
    return-void
.end method

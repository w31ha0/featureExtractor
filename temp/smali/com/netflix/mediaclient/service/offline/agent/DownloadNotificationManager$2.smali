.class Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$2;
.super Ljava/lang/Object;
.source "DownloadNotificationManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;

.field final synthetic val$notificationData:Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$2;->this$0:Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$2;->val$notificationData:Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$2;->val$notificationData:Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$NotificationData;->mBoxShot:Landroid/graphics/Bitmap;

    .line 503
    return-void
.end method

.method public onResponse(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 507
    const-string/jumbo v2, "nf_downloadNotification"

    const-string/jumbo v3, "fetchNotificationData onResponse gotImage=%b"

    new-array v4, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 508
    if-eqz p1, :cond_0

    .line 509
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$2$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$2$1;-><init>(Lcom/netflix/mediaclient/service/offline/agent/DownloadNotificationManager$2;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    .line 516
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 507
    goto :goto_0
.end method

.class Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1;
.super Ljava/lang/Object;
.source "BaseNotification.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$imageLoader:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

.field final synthetic val$listSummary:Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

.field final synthetic val$msg:Lcom/netflix/mediaclient/service/pushnotification/MessageData;

.field final synthetic val$notificationSummary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;Lcom/netflix/mediaclient/util/gfx/ImageLoader;Lcom/netflix/model/leafs/social/IrisNotificationSummary;Lcom/netflix/mediaclient/service/pushnotification/MessageData;Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1;->val$imageLoader:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1;->val$notificationSummary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1;->val$msg:Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1;->val$listSummary:Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

    iput-object p6, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 283
    return-void
.end method

.method public onResponse(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 274
    if-eqz p1, :cond_0

    .line 275
    iget-object v7, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1;->val$imageLoader:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1;->val$notificationSummary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getTVCardUrl()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    new-instance v0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1onBoxArtFetched;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1;->val$notificationSummary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1;->val$listSummary:Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1;->val$msg:Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1onBoxArtFetched;-><init>(Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;Landroid/graphics/Bitmap;Landroid/content/Context;Lcom/netflix/model/leafs/social/IrisNotificationSummary;Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;Lcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move v5, v10

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->getImg(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;IILcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;)V

    .line 277
    :cond_0
    return-void
.end method

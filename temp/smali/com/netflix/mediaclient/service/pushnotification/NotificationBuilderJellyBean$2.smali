.class final Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$2;
.super Ljava/lang/Object;
.source "NotificationBuilderJellyBean.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;


# instance fields
.field final synthetic val$bigPictureStyle:Landroid/app/Notification$BigPictureStyle;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$msgId:I

.field final synthetic val$payload:Lcom/netflix/mediaclient/service/pushnotification/Payload;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$BigPictureStyle;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$2;->val$payload:Lcom/netflix/mediaclient/service/pushnotification/Payload;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$2;->val$bigPictureStyle:Landroid/app/Notification$BigPictureStyle;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$2;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$2;->val$msgId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$2;->val$bigPictureStyle:Landroid/app/Notification$BigPictureStyle;

    invoke-virtual {v0}, Landroid/app/Notification$BigPictureStyle;->build()Landroid/app/Notification;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$2;->val$context:Landroid/content/Context;

    iget v2, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$2;->val$msgId:I

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilder;->sendNotification(Landroid/content/Context;Landroid/app/Notification;I)V

    .line 198
    return-void
.end method

.method public onResponse(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 182
    if-eqz p1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$2;->val$bigPictureStyle:Landroid/app/Notification$BigPictureStyle;

    invoke-virtual {v0, p1}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 186
    :cond_0
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Large icon image set!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$2;->val$bigPictureStyle:Landroid/app/Notification$BigPictureStyle;

    invoke-virtual {v0}, Landroid/app/Notification$BigPictureStyle;->build()Landroid/app/Notification;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$2;->val$context:Landroid/content/Context;

    iget v2, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$2;->val$msgId:I

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilder;->sendNotification(Landroid/content/Context;Landroid/app/Notification;I)V

    .line 189
    return-void
.end method

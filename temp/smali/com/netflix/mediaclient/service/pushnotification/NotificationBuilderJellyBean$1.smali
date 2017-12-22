.class final Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;
.super Ljava/lang/Object;
.source "NotificationBuilderJellyBean.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;


# instance fields
.field final synthetic val$builder:Landroid/app/Notification$Builder;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$imageLoader:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

.field final synthetic val$msgId:I

.field final synthetic val$payload:Lcom/netflix/mediaclient/service/pushnotification/Payload;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$Builder;Landroid/content/Context;ILcom/netflix/mediaclient/util/gfx/ImageLoader;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$payload:Lcom/netflix/mediaclient/service/pushnotification/Payload;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$builder:Landroid/app/Notification$Builder;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$msgId:I

    iput-object p5, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$imageLoader:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$payload:Lcom/netflix/mediaclient/service/pushnotification/Payload;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$builder:Landroid/app/Notification$Builder;

    iget v3, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$msgId:I

    iget-object v4, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$imageLoader:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean;->access$000(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$Builder;ILcom/netflix/mediaclient/util/gfx/ImageLoader;)V

    .line 125
    return-void
.end method

.method public onResponse(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 100
    if-eqz p1, :cond_0

    .line 104
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 105
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ViewUtils;->createSquaredBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 109
    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 115
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$payload:Lcom/netflix/mediaclient/service/pushnotification/Payload;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$builder:Landroid/app/Notification$Builder;

    iget v3, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$msgId:I

    iget-object v4, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$imageLoader:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean;->access$000(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$Builder;ILcom/netflix/mediaclient/util/gfx/ImageLoader;)V

    .line 116
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Large icon image set!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;->val$builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto :goto_0
.end method

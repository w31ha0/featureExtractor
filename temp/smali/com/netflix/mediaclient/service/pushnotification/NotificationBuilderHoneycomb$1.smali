.class final Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb$1;
.super Ljava/lang/Object;
.source "NotificationBuilderHoneycomb.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;


# instance fields
.field final synthetic val$builder:Landroid/app/Notification$Builder;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$msgId:I

.field final synthetic val$payload:Lcom/netflix/mediaclient/service/pushnotification/Payload;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$Builder;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb$1;->val$payload:Lcom/netflix/mediaclient/service/pushnotification/Payload;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb$1;->val$builder:Landroid/app/Notification$Builder;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb$1;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb$1;->val$msgId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onResponse(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 89
    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb$1;->val$builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb$1;->val$builder:Landroid/app/Notification$Builder;

    iget v2, p0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb$1;->val$msgId:I

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb;->access$000(Landroid/content/Context;Landroid/app/Notification$Builder;I)V

    .line 94
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Image set!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method

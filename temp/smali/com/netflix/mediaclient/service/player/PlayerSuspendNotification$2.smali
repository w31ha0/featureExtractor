.class Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification$2;
.super Ljava/lang/Object;
.source "PlayerSuspendNotification.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification$2;->this$0:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 142
    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "failed to downlod %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 143
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification$2;->this$0:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->access$500(Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;Landroid/graphics/Bitmap;)V

    .line 144
    return-void
.end method

.method public onResponse(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 134
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    invoke-static {}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "downloaded image from %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification$2;->this$0:Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->access$500(Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;Landroid/graphics/Bitmap;)V

    .line 139
    :cond_0
    return-void
.end method

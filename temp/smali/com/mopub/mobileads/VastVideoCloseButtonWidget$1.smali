.class Lcom/mopub/mobileads/VastVideoCloseButtonWidget$1;
.super Ljava/lang/Object;
.source "VastVideoCloseButtonWidget.java"

# interfaces
.implements Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->updateCloseButtonIcon(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

.field final synthetic val$imageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastVideoCloseButtonWidget;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget$1;->this$0:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget$1;->val$imageUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 1
    .param p1, "volleyError"    # Lcom/mopub/volley/VolleyError;

    .prologue
    .line 119
    const-string v0, "Failed to load image."

    invoke-static {v0, p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    return-void
.end method

.method public onResponse(Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 5
    .param p1, "imageContainer"    # Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;
    .param p2, "isImmediate"    # Z

    .prologue
    .line 109
    invoke-virtual {p1}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 110
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget$1;->this$0:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    invoke-static {v1}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->access$000(Lcom/mopub/mobileads/VastVideoCloseButtonWidget;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    const-string v1, "%s returned null bitmap"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoCloseButtonWidget$1;->val$imageUrl:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

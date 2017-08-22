.class Lcom/mobfox/sdk/video/VASTView$6;
.super Ljava/lang/Object;
.source "VASTView.java"

# interfaces
.implements Lcom/mobfox/sdk/networking/AsyncCallbackBitmap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/video/VASTView;->playCreative(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/video/VASTView;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/video/VASTView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/video/VASTView;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/mobfox/sdk/video/VASTView$6;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iput-object p2, p0, Lcom/mobfox/sdk/video/VASTView$6;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILandroid/graphics/Bitmap;Ljava/util/Map;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$6;->this$0:Lcom/mobfox/sdk/video/VASTView;

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mobfox/sdk/video/VASTView$6;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iget-object v2, v2, Lcom/mobfox/sdk/video/VASTView;->self:Lcom/mobfox/sdk/video/VASTView;

    invoke-virtual {v2}, Lcom/mobfox/sdk/video/VASTView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/mobfox/sdk/video/VASTView;->poster:Landroid/widget/ImageView;

    .line 253
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$6;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iget-object v0, v0, Lcom/mobfox/sdk/video/VASTView;->poster:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 254
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$6;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iget-object v0, v0, Lcom/mobfox/sdk/video/VASTView;->poster:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 255
    const-string v0, "bitmap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "poster: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$6;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iget-object v0, v0, Lcom/mobfox/sdk/video/VASTView;->poster:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$6;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iget-object v0, v0, Lcom/mobfox/sdk/video/VASTView;->self:Lcom/mobfox/sdk/video/VASTView;

    iget-object v1, p0, Lcom/mobfox/sdk/video/VASTView$6;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iget-object v1, v1, Lcom/mobfox/sdk/video/VASTView;->poster:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mobfox/sdk/video/VASTView;->addView(Landroid/view/View;I)V

    .line 259
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$6;->val$type:Ljava/lang/String;

    const-string v1, "audio/mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$6;->this$0:Lcom/mobfox/sdk/video/VASTView;

    invoke-virtual {v0}, Lcom/mobfox/sdk/video/VASTView;->showPoster()V

    .line 262
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 265
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    const-string v0, "MobFoxBanner"

    const-string v1, "failed to load video poster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    return-void
.end method

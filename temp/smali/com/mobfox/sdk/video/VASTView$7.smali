.class Lcom/mobfox/sdk/video/VASTView$7;
.super Ljava/lang/Object;
.source "VASTView.java"

# interfaces
.implements Lcom/mobfox/sdk/networking/AsyncCallbackDrawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/video/VASTView;->setBG(Landroid/content/Context;Ljava/lang/String;Lcom/mobfox/sdk/video/VASTView$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/video/VASTView;

.field final synthetic val$listener:Lcom/mobfox/sdk/video/VASTView$Listener;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/video/VASTView;Lcom/mobfox/sdk/video/VASTView$Listener;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/video/VASTView;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/mobfox/sdk/video/VASTView$7;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iput-object p2, p0, Lcom/mobfox/sdk/video/VASTView$7;->val$listener:Lcom/mobfox/sdk/video/VASTView$Listener;

    iput-object p3, p0, Lcom/mobfox/sdk/video/VASTView$7;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILandroid/graphics/drawable/Drawable;Ljava/util/Map;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/drawable/Drawable;",
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
    .line 362
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$7;->val$listener:Lcom/mobfox/sdk/video/VASTView$Listener;

    invoke-interface {v0, p2}, Lcom/mobfox/sdk/video/VASTView$Listener;->onFinished(Landroid/graphics/drawable/Drawable;)V

    .line 363
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 367
    const-string v0, "MobFoxBanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to retrieve >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mobfox/sdk/video/VASTView$7;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void
.end method

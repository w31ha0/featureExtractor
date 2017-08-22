.class Lcom/mobfox/sdk/video/VASTView$12;
.super Ljava/lang/Object;
.source "VASTView.java"

# interfaces
.implements Lcom/mobfox/sdk/video/VASTTasks$DoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/video/VASTView;->muteBtn(Landroid/content/Context;)Landroid/widget/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/video/VASTView;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mute:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/video/VASTView;Landroid/content/Context;Landroid/widget/Button;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/video/VASTView;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/mobfox/sdk/video/VASTView$12;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iput-object p2, p0, Lcom/mobfox/sdk/video/VASTView$12;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/mobfox/sdk/video/VASTView$12;->val$mute:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 437
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 438
    .local v0, "res":Landroid/graphics/drawable/StateListDrawable;
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10102fe

    aput v2, v1, v3

    iget-object v2, p0, Lcom/mobfox/sdk/video/VASTView$12;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iget-object v2, v2, Lcom/mobfox/sdk/video/VASTView;->dmute:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 439
    new-array v1, v3, [I

    iget-object v2, p0, Lcom/mobfox/sdk/video/VASTView$12;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iget-object v2, v2, Lcom/mobfox/sdk/video/VASTView;->dunmute:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 440
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/mobfox/sdk/video/VASTView$12;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/mobfox/sdk/video/VASTView$12$1;

    invoke-direct {v2, p0, v0}, Lcom/mobfox/sdk/video/VASTView$12$1;-><init>(Lcom/mobfox/sdk/video/VASTView$12;Landroid/graphics/drawable/StateListDrawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 448
    return-void
.end method

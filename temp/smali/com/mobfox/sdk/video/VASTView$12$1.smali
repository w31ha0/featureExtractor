.class Lcom/mobfox/sdk/video/VASTView$12$1;
.super Ljava/lang/Object;
.source "VASTView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/video/VASTView$12;->onDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobfox/sdk/video/VASTView$12;

.field final synthetic val$res:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/video/VASTView$12;Landroid/graphics/drawable/StateListDrawable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mobfox/sdk/video/VASTView$12;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/mobfox/sdk/video/VASTView$12$1;->this$1:Lcom/mobfox/sdk/video/VASTView$12;

    iput-object p2, p0, Lcom/mobfox/sdk/video/VASTView$12$1;->val$res:Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 443
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 444
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$12$1;->this$1:Lcom/mobfox/sdk/video/VASTView$12;

    iget-object v0, v0, Lcom/mobfox/sdk/video/VASTView$12;->val$mute:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mobfox/sdk/video/VASTView$12$1;->val$res:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 446
    :cond_0
    return-void
.end method

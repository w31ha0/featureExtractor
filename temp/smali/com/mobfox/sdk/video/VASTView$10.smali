.class Lcom/mobfox/sdk/video/VASTView$10;
.super Ljava/lang/Object;
.source "VASTView.java"

# interfaces
.implements Lcom/mobfox/sdk/video/VASTView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/video/VASTView;->closeBtn(Landroid/content/Context;)Landroid/widget/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/video/VASTView;

.field final synthetic val$close:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/video/VASTView;Landroid/widget/Button;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/video/VASTView;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/mobfox/sdk/video/VASTView$10;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iput-object p2, p0, Lcom/mobfox/sdk/video/VASTView$10;->val$close:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 408
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 409
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$10;->val$close:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 411
    :cond_0
    return-void
.end method

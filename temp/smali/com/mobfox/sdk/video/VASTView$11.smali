.class Lcom/mobfox/sdk/video/VASTView$11;
.super Ljava/lang/Object;
.source "VASTView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/video/VASTView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/video/VASTView;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/mobfox/sdk/video/VASTView$11;->this$0:Lcom/mobfox/sdk/video/VASTView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$11;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iget-object v0, v0, Lcom/mobfox/sdk/video/VASTView;->self:Lcom/mobfox/sdk/video/VASTView;

    const-string v1, "videoClose"

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/video/VASTView;->notifyJS(Ljava/lang/String;)V

    .line 426
    return-void
.end method

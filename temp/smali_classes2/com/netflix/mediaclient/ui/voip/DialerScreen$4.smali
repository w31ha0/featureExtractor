.class Lcom/netflix/mediaclient/ui/voip/DialerScreen$4;
.super Ljava/lang/Object;
.source "DialerScreen.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$4;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 405
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$4;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$200(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$4;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$300(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 408
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 409
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 410
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$4;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$400(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 413
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 415
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$4;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$500(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$4;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$300(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/util/ViewUtils;->removeGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 442
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$4;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$300(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 421
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$4;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$300(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$4;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$500(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 422
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$4;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$500(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v0

    .line 431
    if-le v2, v1, :cond_1

    .line 432
    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 435
    :cond_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 436
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 438
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$4;->this$0:Lcom/netflix/mediaclient/ui/voip/DialerScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->access$400(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

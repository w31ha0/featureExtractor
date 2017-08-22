.class Lcom/mobfox/sdk/video/VASTView$5;
.super Ljava/lang/Object;
.source "VASTView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/video/VASTView;->init(Landroid/content/Context;Landroid/webkit/WebView;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/video/VASTView;

.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$options:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/video/VASTView;Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/video/VASTView;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/mobfox/sdk/video/VASTView$5;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iput-object p2, p0, Lcom/mobfox/sdk/video/VASTView$5;->val$c:Landroid/content/Context;

    iput-object p3, p0, Lcom/mobfox/sdk/video/VASTView$5;->val$options:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 181
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 182
    iget-object v1, p0, Lcom/mobfox/sdk/video/VASTView$5;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iget-object v1, v1, Lcom/mobfox/sdk/video/VASTView;->self:Lcom/mobfox/sdk/video/VASTView;

    invoke-virtual {v1}, Lcom/mobfox/sdk/video/VASTView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 184
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 185
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 186
    iget-object v1, p0, Lcom/mobfox/sdk/video/VASTView$5;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iget-object v1, v1, Lcom/mobfox/sdk/video/VASTView;->video:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    iget-object v1, p0, Lcom/mobfox/sdk/video/VASTView$5;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iget-object v1, v1, Lcom/mobfox/sdk/video/VASTView;->poster:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    iget-object v1, p0, Lcom/mobfox/sdk/video/VASTView$5;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iget-object v1, v1, Lcom/mobfox/sdk/video/VASTView;->self:Lcom/mobfox/sdk/video/VASTView;

    iget-object v2, p0, Lcom/mobfox/sdk/video/VASTView$5;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iget-object v2, v2, Lcom/mobfox/sdk/video/VASTView;->video:Landroid/widget/VideoView;

    invoke-virtual {v1, v2}, Lcom/mobfox/sdk/video/VASTView;->addView(Landroid/view/View;)V

    .line 190
    iget-object v1, p0, Lcom/mobfox/sdk/video/VASTView$5;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iget-object v2, p0, Lcom/mobfox/sdk/video/VASTView$5;->val$c:Landroid/content/Context;

    iget-object v3, p0, Lcom/mobfox/sdk/video/VASTView$5;->val$options:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lcom/mobfox/sdk/video/VASTView;->addButtons(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 191
    return-void
.end method

.class Lcom/mobfox/sdk/video/VASTView$4;
.super Ljava/lang/Object;
.source "VASTView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

.field final synthetic val$clickUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/video/VASTView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/video/VASTView;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/mobfox/sdk/video/VASTView$4;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iput-object p2, p0, Lcom/mobfox/sdk/video/VASTView$4;->val$clickUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 164
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 165
    const-string v1, "MobFoxBanner"

    const-string v2, "video clicked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v1, p0, Lcom/mobfox/sdk/video/VASTView$4;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iget-object v1, v1, Lcom/mobfox/sdk/video/VASTView;->self:Lcom/mobfox/sdk/video/VASTView;

    const-string v2, "videoClick"

    invoke-virtual {v1, v2}, Lcom/mobfox/sdk/video/VASTView;->notifyJS(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/mobfox/sdk/video/VASTView$4;->val$clickUrl:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 170
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

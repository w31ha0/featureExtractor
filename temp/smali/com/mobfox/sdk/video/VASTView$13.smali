.class Lcom/mobfox/sdk/video/VASTView$13;
.super Ljava/lang/Object;
.source "VASTView.java"

# interfaces
.implements Lcom/mobfox/sdk/video/VASTView$Listener;


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

.field final synthetic val$drawables:Lcom/mobfox/sdk/video/VASTTasks;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/video/VASTView;Lcom/mobfox/sdk/video/VASTTasks;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/video/VASTView;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/mobfox/sdk/video/VASTView$13;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iput-object p2, p0, Lcom/mobfox/sdk/video/VASTView$13;->val$drawables:Lcom/mobfox/sdk/video/VASTTasks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$13;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iput-object p1, v0, Lcom/mobfox/sdk/video/VASTView;->dmute:Landroid/graphics/drawable/Drawable;

    .line 454
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$13;->val$drawables:Lcom/mobfox/sdk/video/VASTTasks;

    iget v1, v0, Lcom/mobfox/sdk/video/VASTTasks;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/mobfox/sdk/video/VASTTasks;->count:I

    .line 455
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$13;->val$drawables:Lcom/mobfox/sdk/video/VASTTasks;

    iget v0, v0, Lcom/mobfox/sdk/video/VASTTasks;->count:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 456
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$13;->val$drawables:Lcom/mobfox/sdk/video/VASTTasks;

    sget-object v1, Lcom/mobfox/sdk/video/VASTTasks$Tasks;->GET_DRAWABLES:Lcom/mobfox/sdk/video/VASTTasks$Tasks;

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/video/VASTTasks;->notifyTaskDone(Lcom/mobfox/sdk/video/VASTTasks$Tasks;)V

    .line 458
    :cond_0
    return-void
.end method

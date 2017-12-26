.class Lcom/skipping/AfterTrainingActivity$1;
.super Ljava/lang/Object;
.source "AfterTrainingActivity.java"

# interfaces
.implements Lwheel_lib/OnWheelScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skipping/AfterTrainingActivity;->Jump(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/skipping/AfterTrainingActivity;

.field private final synthetic val$jump:Lwheel_lib/WheelView;


# direct methods
.method constructor <init>(Lcom/skipping/AfterTrainingActivity;Lwheel_lib/WheelView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/skipping/AfterTrainingActivity$1;->this$0:Lcom/skipping/AfterTrainingActivity;

    iput-object p2, p0, Lcom/skipping/AfterTrainingActivity$1;->val$jump:Lwheel_lib/WheelView;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollingFinished(Lwheel_lib/WheelView;)V
    .locals 3
    .param p1, "wheel"    # Lwheel_lib/WheelView;

    .prologue
    const/4 v2, 0x0

    .line 279
    iget-object v0, p0, Lcom/skipping/AfterTrainingActivity$1;->this$0:Lcom/skipping/AfterTrainingActivity;

    iput-boolean v2, v0, Lcom/skipping/AfterTrainingActivity;->JumpScrolled:Z

    .line 280
    iget-object v0, p0, Lcom/skipping/AfterTrainingActivity$1;->this$0:Lcom/skipping/AfterTrainingActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/skipping/AfterTrainingActivity;->JumpChanged:Z

    .line 282
    iget-object v0, p0, Lcom/skipping/AfterTrainingActivity$1;->this$0:Lcom/skipping/AfterTrainingActivity;

    iget-object v1, p0, Lcom/skipping/AfterTrainingActivity$1;->val$jump:Lwheel_lib/WheelView;

    invoke-virtual {v1}, Lwheel_lib/WheelView;->getCurrentItem()I

    move-result v1

    iput v1, v0, Lcom/skipping/AfterTrainingActivity;->Jumps:I

    .line 284
    iget-object v0, p0, Lcom/skipping/AfterTrainingActivity$1;->this$0:Lcom/skipping/AfterTrainingActivity;

    iput-boolean v2, v0, Lcom/skipping/AfterTrainingActivity;->JumpChanged:Z

    .line 285
    return-void
.end method

.method public onScrollingStarted(Lwheel_lib/WheelView;)V
    .locals 2
    .param p1, "wheel"    # Lwheel_lib/WheelView;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/skipping/AfterTrainingActivity$1;->this$0:Lcom/skipping/AfterTrainingActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/skipping/AfterTrainingActivity;->JumpScrolled:Z

    .line 277
    return-void
.end method

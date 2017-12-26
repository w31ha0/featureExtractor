.class Lcom/skipping/WeightActivity$5;
.super Ljava/lang/Object;
.source "WeightActivity.java"

# interfaces
.implements Lwheel_lib/OnWheelScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skipping/WeightActivity;->DrawDrams()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/skipping/WeightActivity;

.field private final synthetic val$WVweight:Lwheel_lib/WheelView;

.field private final synthetic val$WVweight1:Lwheel_lib/WheelView;


# direct methods
.method constructor <init>(Lcom/skipping/WeightActivity;Lwheel_lib/WheelView;Lwheel_lib/WheelView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/skipping/WeightActivity$5;->this$0:Lcom/skipping/WeightActivity;

    iput-object p2, p0, Lcom/skipping/WeightActivity$5;->val$WVweight:Lwheel_lib/WheelView;

    iput-object p3, p0, Lcom/skipping/WeightActivity$5;->val$WVweight1:Lwheel_lib/WheelView;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollingFinished(Lwheel_lib/WheelView;)V
    .locals 3
    .param p1, "wheel"    # Lwheel_lib/WheelView;

    .prologue
    const/4 v2, 0x0

    .line 309
    iget-object v0, p0, Lcom/skipping/WeightActivity$5;->this$0:Lcom/skipping/WeightActivity;

    invoke-static {v0, v2}, Lcom/skipping/WeightActivity;->access$3(Lcom/skipping/WeightActivity;Z)V

    .line 310
    iget-object v0, p0, Lcom/skipping/WeightActivity$5;->this$0:Lcom/skipping/WeightActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/skipping/WeightActivity;->access$2(Lcom/skipping/WeightActivity;Z)V

    .line 313
    iget-object v0, p0, Lcom/skipping/WeightActivity$5;->this$0:Lcom/skipping/WeightActivity;

    iget-object v1, p0, Lcom/skipping/WeightActivity$5;->val$WVweight:Lwheel_lib/WheelView;

    invoke-virtual {v1}, Lwheel_lib/WheelView;->getCurrentItem()I

    move-result v1

    iput v1, v0, Lcom/skipping/WeightActivity;->temp_bmi_weight:I

    .line 314
    iget-object v0, p0, Lcom/skipping/WeightActivity$5;->this$0:Lcom/skipping/WeightActivity;

    iget-object v1, p0, Lcom/skipping/WeightActivity$5;->val$WVweight1:Lwheel_lib/WheelView;

    invoke-virtual {v1}, Lwheel_lib/WheelView;->getCurrentItem()I

    move-result v1

    iput v1, v0, Lcom/skipping/WeightActivity;->temp_bmi_weight1:I

    .line 318
    iget-object v0, p0, Lcom/skipping/WeightActivity$5;->this$0:Lcom/skipping/WeightActivity;

    invoke-static {v0, v2}, Lcom/skipping/WeightActivity;->access$2(Lcom/skipping/WeightActivity;Z)V

    .line 319
    return-void
.end method

.method public onScrollingStarted(Lwheel_lib/WheelView;)V
    .locals 2
    .param p1, "wheel"    # Lwheel_lib/WheelView;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/skipping/WeightActivity$5;->this$0:Lcom/skipping/WeightActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/skipping/WeightActivity;->access$3(Lcom/skipping/WeightActivity;Z)V

    .line 307
    return-void
.end method

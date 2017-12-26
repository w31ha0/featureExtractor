.class Lcom/skipping/AddWeightActivity$3;
.super Ljava/lang/Object;
.source "AddWeightActivity.java"

# interfaces
.implements Lwheel_lib/OnWheelChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skipping/AddWeightActivity;->DrawDrams()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/skipping/AddWeightActivity;

.field private final synthetic val$WVweight:Lwheel_lib/WheelView;

.field private final synthetic val$WVweight1:Lwheel_lib/WheelView;


# direct methods
.method constructor <init>(Lcom/skipping/AddWeightActivity;Lwheel_lib/WheelView;Lwheel_lib/WheelView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/skipping/AddWeightActivity$3;->this$0:Lcom/skipping/AddWeightActivity;

    iput-object p2, p0, Lcom/skipping/AddWeightActivity$3;->val$WVweight:Lwheel_lib/WheelView;

    iput-object p3, p0, Lcom/skipping/AddWeightActivity$3;->val$WVweight1:Lwheel_lib/WheelView;

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lwheel_lib/WheelView;II)V
    .locals 2
    .param p1, "wheel"    # Lwheel_lib/WheelView;
    .param p2, "oldValue"    # I
    .param p3, "newValue"    # I

    .prologue
    .line 368
    iget-object v0, p0, Lcom/skipping/AddWeightActivity$3;->this$0:Lcom/skipping/AddWeightActivity;

    invoke-static {v0}, Lcom/skipping/AddWeightActivity;->access$0(Lcom/skipping/AddWeightActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/skipping/AddWeightActivity$3;->this$0:Lcom/skipping/AddWeightActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/skipping/AddWeightActivity;->access$1(Lcom/skipping/AddWeightActivity;Z)V

    .line 372
    iget-object v0, p0, Lcom/skipping/AddWeightActivity$3;->this$0:Lcom/skipping/AddWeightActivity;

    iget-object v1, p0, Lcom/skipping/AddWeightActivity$3;->val$WVweight:Lwheel_lib/WheelView;

    invoke-virtual {v1}, Lwheel_lib/WheelView;->getCurrentItem()I

    move-result v1

    iput v1, v0, Lcom/skipping/AddWeightActivity;->temp_bmi_weight:I

    .line 373
    iget-object v0, p0, Lcom/skipping/AddWeightActivity$3;->this$0:Lcom/skipping/AddWeightActivity;

    iget-object v1, p0, Lcom/skipping/AddWeightActivity$3;->val$WVweight1:Lwheel_lib/WheelView;

    invoke-virtual {v1}, Lwheel_lib/WheelView;->getCurrentItem()I

    move-result v1

    iput v1, v0, Lcom/skipping/AddWeightActivity;->temp_bmi_weight1:I

    .line 377
    iget-object v0, p0, Lcom/skipping/AddWeightActivity$3;->this$0:Lcom/skipping/AddWeightActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/skipping/AddWeightActivity;->access$1(Lcom/skipping/AddWeightActivity;Z)V

    .line 379
    :cond_0
    return-void
.end method

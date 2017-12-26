.class Lcom/skipping/AddWeightActivity$6;
.super Ljava/lang/Object;
.source "AddWeightActivity.java"

# interfaces
.implements Lwheel_lib/OnWheelChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skipping/AddWeightActivity;->DrawDramsDate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/skipping/AddWeightActivity;

.field private final synthetic val$day:Lwheel_lib/WheelView;

.field private final synthetic val$month:Lwheel_lib/WheelView;

.field private final synthetic val$year:Lwheel_lib/WheelView;


# direct methods
.method constructor <init>(Lcom/skipping/AddWeightActivity;Lwheel_lib/WheelView;Lwheel_lib/WheelView;Lwheel_lib/WheelView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/skipping/AddWeightActivity$6;->this$0:Lcom/skipping/AddWeightActivity;

    iput-object p2, p0, Lcom/skipping/AddWeightActivity$6;->val$year:Lwheel_lib/WheelView;

    iput-object p3, p0, Lcom/skipping/AddWeightActivity$6;->val$month:Lwheel_lib/WheelView;

    iput-object p4, p0, Lcom/skipping/AddWeightActivity$6;->val$day:Lwheel_lib/WheelView;

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lwheel_lib/WheelView;II)V
    .locals 4
    .param p1, "wheel"    # Lwheel_lib/WheelView;
    .param p2, "oldValue"    # I
    .param p3, "newValue"    # I

    .prologue
    .line 436
    iget-object v0, p0, Lcom/skipping/AddWeightActivity$6;->this$0:Lcom/skipping/AddWeightActivity;

    iget-object v1, p0, Lcom/skipping/AddWeightActivity$6;->val$year:Lwheel_lib/WheelView;

    iget-object v2, p0, Lcom/skipping/AddWeightActivity$6;->val$month:Lwheel_lib/WheelView;

    iget-object v3, p0, Lcom/skipping/AddWeightActivity$6;->val$day:Lwheel_lib/WheelView;

    invoke-virtual {v0, v1, v2, v3}, Lcom/skipping/AddWeightActivity;->updateDays(Lwheel_lib/WheelView;Lwheel_lib/WheelView;Lwheel_lib/WheelView;)V

    .line 437
    return-void
.end method

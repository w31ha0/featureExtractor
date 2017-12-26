.class Lcom/skipping/AddWeightActivity$7;
.super Ljava/lang/Object;
.source "AddWeightActivity.java"

# interfaces
.implements Lwheel_lib/OnWheelChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skipping/AddWeightActivity;->addChangingListener(Lwheel_lib/WheelView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/skipping/AddWeightActivity;


# direct methods
.method constructor <init>(Lcom/skipping/AddWeightActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/skipping/AddWeightActivity$7;->this$0:Lcom/skipping/AddWeightActivity;

    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lwheel_lib/WheelView;II)V
    .locals 0
    .param p1, "wheel"    # Lwheel_lib/WheelView;
    .param p2, "oldValue"    # I
    .param p3, "newValue"    # I

    .prologue
    .line 612
    return-void
.end method

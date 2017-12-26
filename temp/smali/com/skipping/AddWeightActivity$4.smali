.class Lcom/skipping/AddWeightActivity$4;
.super Ljava/lang/Object;
.source "AddWeightActivity.java"

# interfaces
.implements Lwheel_lib/OnWheelClickedListener;


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


# direct methods
.method constructor <init>(Lcom/skipping/AddWeightActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/skipping/AddWeightActivity$4;->this$0:Lcom/skipping/AddWeightActivity;

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(Lwheel_lib/WheelView;I)V
    .locals 1
    .param p1, "wheel"    # Lwheel_lib/WheelView;
    .param p2, "itemIndex"    # I

    .prologue
    .line 387
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lwheel_lib/WheelView;->setCurrentItem(IZ)V

    .line 388
    return-void
.end method

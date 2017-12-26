.class Lwheel_lib/WheelView$2;
.super Landroid/database/DataSetObserver;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwheel_lib/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwheel_lib/WheelView;


# direct methods
.method constructor <init>(Lwheel_lib/WheelView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lwheel_lib/WheelView$2;->this$0:Lwheel_lib/WheelView;

    .line 199
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lwheel_lib/WheelView$2;->this$0:Lwheel_lib/WheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lwheel_lib/WheelView;->invalidateWheel(Z)V

    .line 203
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lwheel_lib/WheelView$2;->this$0:Lwheel_lib/WheelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lwheel_lib/WheelView;->invalidateWheel(Z)V

    .line 208
    return-void
.end method

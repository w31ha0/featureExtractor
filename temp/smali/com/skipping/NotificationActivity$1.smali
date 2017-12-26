.class Lcom/skipping/NotificationActivity$1;
.super Ljava/lang/Object;
.source "NotificationActivity.java"

# interfaces
.implements Lwheel_lib/OnWheelScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skipping/NotificationActivity;->time_Dialog(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/skipping/NotificationActivity;

.field private final synthetic val$hours:Lwheel_lib/WheelView;

.field private final synthetic val$mins:Lwheel_lib/WheelView;


# direct methods
.method constructor <init>(Lcom/skipping/NotificationActivity;Lwheel_lib/WheelView;Lwheel_lib/WheelView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/skipping/NotificationActivity$1;->this$0:Lcom/skipping/NotificationActivity;

    iput-object p2, p0, Lcom/skipping/NotificationActivity$1;->val$hours:Lwheel_lib/WheelView;

    iput-object p3, p0, Lcom/skipping/NotificationActivity$1;->val$mins:Lwheel_lib/WheelView;

    .line 1117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollingFinished(Lwheel_lib/WheelView;)V
    .locals 3
    .param p1, "wheel"    # Lwheel_lib/WheelView;

    .prologue
    const/4 v2, 0x0

    .line 1122
    iget-object v0, p0, Lcom/skipping/NotificationActivity$1;->this$0:Lcom/skipping/NotificationActivity;

    iput-boolean v2, v0, Lcom/skipping/NotificationActivity;->timeScrolled:Z

    .line 1123
    iget-object v0, p0, Lcom/skipping/NotificationActivity$1;->this$0:Lcom/skipping/NotificationActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/skipping/NotificationActivity;->timeChanged:Z

    .line 1125
    iget-object v0, p0, Lcom/skipping/NotificationActivity$1;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v1, p0, Lcom/skipping/NotificationActivity$1;->val$hours:Lwheel_lib/WheelView;

    invoke-virtual {v1}, Lwheel_lib/WheelView;->getCurrentItem()I

    move-result v1

    iput v1, v0, Lcom/skipping/NotificationActivity;->Hour:I

    .line 1126
    iget-object v0, p0, Lcom/skipping/NotificationActivity$1;->this$0:Lcom/skipping/NotificationActivity;

    iget-object v1, p0, Lcom/skipping/NotificationActivity$1;->val$mins:Lwheel_lib/WheelView;

    invoke-virtual {v1}, Lwheel_lib/WheelView;->getCurrentItem()I

    move-result v1

    iput v1, v0, Lcom/skipping/NotificationActivity;->Minute:I

    .line 1128
    iget-object v0, p0, Lcom/skipping/NotificationActivity$1;->this$0:Lcom/skipping/NotificationActivity;

    iput-boolean v2, v0, Lcom/skipping/NotificationActivity;->timeChanged:Z

    .line 1129
    return-void
.end method

.method public onScrollingStarted(Lwheel_lib/WheelView;)V
    .locals 2
    .param p1, "wheel"    # Lwheel_lib/WheelView;

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/skipping/NotificationActivity$1;->this$0:Lcom/skipping/NotificationActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/skipping/NotificationActivity;->timeScrolled:Z

    .line 1120
    return-void
.end method

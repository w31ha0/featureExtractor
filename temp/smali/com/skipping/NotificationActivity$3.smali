.class Lcom/skipping/NotificationActivity$3;
.super Ljava/lang/Object;
.source "NotificationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/skipping/NotificationActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/skipping/NotificationActivity$3;->this$0:Lcom/skipping/NotificationActivity;

    iput-object p2, p0, Lcom/skipping/NotificationActivity$3;->val$dialog:Landroid/app/Dialog;

    .line 1304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/skipping/NotificationActivity$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1307
    return-void
.end method

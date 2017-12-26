.class Lcom/skipping/TrainingActivity$6;
.super Ljava/lang/Object;
.source "TrainingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skipping/TrainingActivity;->ShowGetWeight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/skipping/TrainingActivity;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/skipping/TrainingActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/skipping/TrainingActivity$6;->this$0:Lcom/skipping/TrainingActivity;

    iput-object p2, p0, Lcom/skipping/TrainingActivity$6;->val$dialog:Landroid/app/Dialog;

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 677
    iget-object v0, p0, Lcom/skipping/TrainingActivity$6;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 678
    iget-object v0, p0, Lcom/skipping/TrainingActivity$6;->this$0:Lcom/skipping/TrainingActivity;

    invoke-virtual {v0}, Lcom/skipping/TrainingActivity;->finish()V

    .line 679
    return-void
.end method

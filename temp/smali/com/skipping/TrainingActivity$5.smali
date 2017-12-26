.class Lcom/skipping/TrainingActivity$5;
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
    iput-object p1, p0, Lcom/skipping/TrainingActivity$5;->this$0:Lcom/skipping/TrainingActivity;

    iput-object p2, p0, Lcom/skipping/TrainingActivity$5;->val$dialog:Landroid/app/Dialog;

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 667
    iget-object v0, p0, Lcom/skipping/TrainingActivity$5;->this$0:Lcom/skipping/TrainingActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/skipping/TrainingActivity$5;->this$0:Lcom/skipping/TrainingActivity;

    const-class v3, Lcom/skipping/WeightActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/skipping/TrainingActivity;->startActivity(Landroid/content/Intent;)V

    .line 669
    iget-object v0, p0, Lcom/skipping/TrainingActivity$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 671
    return-void
.end method

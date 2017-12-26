.class Lcom/skipping/TrainingActivity$7;
.super Ljava/lang/Object;
.source "TrainingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skipping/TrainingActivity;->ShowPutPocket()V
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
    iput-object p1, p0, Lcom/skipping/TrainingActivity$7;->this$0:Lcom/skipping/TrainingActivity;

    iput-object p2, p0, Lcom/skipping/TrainingActivity$7;->val$dialog:Landroid/app/Dialog;

    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 708
    iget-object v1, p0, Lcom/skipping/TrainingActivity$7;->this$0:Lcom/skipping/TrainingActivity;

    iget-object v1, v1, Lcom/skipping/TrainingActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 709
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "put_pocket"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 710
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 712
    iget-object v1, p0, Lcom/skipping/TrainingActivity$7;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 713
    return-void
.end method

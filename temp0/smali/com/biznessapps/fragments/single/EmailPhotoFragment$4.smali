.class Lcom/biznessapps/fragments/single/EmailPhotoFragment$4;
.super Ljava/lang/Object;
.source "EmailPhotoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/single/EmailPhotoFragment;->emailPhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/single/EmailPhotoFragment;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/single/EmailPhotoFragment;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment$4;->this$0:Lcom/biznessapps/fragments/single/EmailPhotoFragment;

    iput-object p2, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 152
    :cond_0
    return-void
.end method

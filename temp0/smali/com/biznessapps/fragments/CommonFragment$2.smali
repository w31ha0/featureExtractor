.class Lcom/biznessapps/fragments/CommonFragment$2;
.super Ljava/lang/Object;
.source "CommonFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/CommonFragment;->showMailingListPropmt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/CommonFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/CommonFragment;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/biznessapps/fragments/CommonFragment$2;->this$0:Lcom/biznessapps/fragments/CommonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 312
    if-eqz p1, :cond_0

    .line 313
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 315
    :cond_0
    return-void
.end method

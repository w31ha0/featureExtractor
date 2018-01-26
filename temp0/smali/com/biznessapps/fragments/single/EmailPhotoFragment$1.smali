.class Lcom/biznessapps/fragments/single/EmailPhotoFragment$1;
.super Ljava/lang/Object;
.source "EmailPhotoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/single/EmailPhotoFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/single/EmailPhotoFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/single/EmailPhotoFragment;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment$1;->this$0:Lcom/biznessapps/fragments/single/EmailPhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/biznessapps/fragments/single/EmailPhotoFragment$1;->this$0:Lcom/biznessapps/fragments/single/EmailPhotoFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/single/EmailPhotoFragment;->access$000(Lcom/biznessapps/fragments/single/EmailPhotoFragment;)V

    .line 113
    return-void
.end method

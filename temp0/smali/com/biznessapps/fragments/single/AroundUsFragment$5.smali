.class Lcom/biznessapps/fragments/single/AroundUsFragment$5;
.super Ljava/lang/Object;
.source "AroundUsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/single/AroundUsFragment;->showDialog(Lcom/biznessapps/model/AroundUsItem$PoiItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/single/AroundUsFragment;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$poiItem:Lcom/biznessapps/model/AroundUsItem$PoiItem;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/single/AroundUsFragment;Lcom/biznessapps/model/AroundUsItem$PoiItem;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/biznessapps/fragments/single/AroundUsFragment$5;->this$0:Lcom/biznessapps/fragments/single/AroundUsFragment;

    iput-object p2, p0, Lcom/biznessapps/fragments/single/AroundUsFragment$5;->val$poiItem:Lcom/biznessapps/model/AroundUsItem$PoiItem;

    iput-object p3, p0, Lcom/biznessapps/fragments/single/AroundUsFragment$5;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment$5;->this$0:Lcom/biznessapps/fragments/single/AroundUsFragment;

    iget-object v1, p0, Lcom/biznessapps/fragments/single/AroundUsFragment$5;->val$poiItem:Lcom/biznessapps/model/AroundUsItem$PoiItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/AroundUsItem$PoiItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/fragments/single/AroundUsFragment;->access$400(Lcom/biznessapps/fragments/single/AroundUsFragment;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment$5;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment$5;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 242
    :cond_0
    return-void
.end method

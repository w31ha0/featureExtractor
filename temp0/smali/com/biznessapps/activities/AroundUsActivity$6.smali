.class Lcom/biznessapps/activities/AroundUsActivity$6;
.super Ljava/lang/Object;
.source "AroundUsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/activities/AroundUsActivity;->showDialog(Lcom/biznessapps/model/AroundUsItem$PoiItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/activities/AroundUsActivity;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$poiItem:Lcom/biznessapps/model/AroundUsItem$PoiItem;


# direct methods
.method constructor <init>(Lcom/biznessapps/activities/AroundUsActivity;Lcom/biznessapps/model/AroundUsItem$PoiItem;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/biznessapps/activities/AroundUsActivity$6;->this$0:Lcom/biznessapps/activities/AroundUsActivity;

    iput-object p2, p0, Lcom/biznessapps/activities/AroundUsActivity$6;->val$poiItem:Lcom/biznessapps/model/AroundUsItem$PoiItem;

    iput-object p3, p0, Lcom/biznessapps/activities/AroundUsActivity$6;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity$6;->this$0:Lcom/biznessapps/activities/AroundUsActivity;

    iget-object v1, p0, Lcom/biznessapps/activities/AroundUsActivity$6;->val$poiItem:Lcom/biznessapps/model/AroundUsItem$PoiItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/AroundUsItem$PoiItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/activities/AroundUsActivity;->access$700(Lcom/biznessapps/activities/AroundUsActivity;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity$6;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity$6;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 334
    :cond_0
    return-void
.end method

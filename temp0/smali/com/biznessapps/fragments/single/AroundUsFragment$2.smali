.class Lcom/biznessapps/fragments/single/AroundUsFragment$2;
.super Ljava/lang/Object;
.source "AroundUsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/single/AroundUsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/single/AroundUsFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/single/AroundUsFragment;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/biznessapps/fragments/single/AroundUsFragment$2;->this$0:Lcom/biznessapps/fragments/single/AroundUsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v1, p0, Lcom/biznessapps/fragments/single/AroundUsFragment$2;->this$0:Lcom/biznessapps/fragments/single/AroundUsFragment;

    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment$2;->this$0:Lcom/biznessapps/fragments/single/AroundUsFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/single/AroundUsFragment;->access$100(Lcom/biznessapps/fragments/single/AroundUsFragment;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/biznessapps/fragments/single/AroundUsFragment$2;->this$0:Lcom/biznessapps/fragments/single/AroundUsFragment;

    invoke-static {v2}, Lcom/biznessapps/fragments/single/AroundUsFragment;->access$000(Lcom/biznessapps/fragments/single/AroundUsFragment;)Lcom/biznessapps/model/AroundUsItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/model/AroundUsItem;->getRedColor()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/biznessapps/fragments/single/AroundUsFragment;->access$200(Lcom/biznessapps/fragments/single/AroundUsFragment;Ljava/util/List;)V

    .line 72
    return-void
.end method

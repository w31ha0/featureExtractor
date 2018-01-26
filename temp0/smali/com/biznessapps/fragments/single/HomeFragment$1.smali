.class Lcom/biznessapps/fragments/single/HomeFragment$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/single/HomeFragment;->getOnClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/single/HomeFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/single/HomeFragment;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/biznessapps/fragments/single/HomeFragment$1;->this$0:Lcom/biznessapps/fragments/single/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment$1;->this$0:Lcom/biznessapps/fragments/single/HomeFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/single/HomeFragment;->access$000(Lcom/biznessapps/fragments/single/HomeFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment$1;->this$0:Lcom/biznessapps/fragments/single/HomeFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/single/HomeFragment;->access$100(Lcom/biznessapps/fragments/single/HomeFragment;)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment$1;->this$0:Lcom/biznessapps/fragments/single/HomeFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/single/HomeFragment;->access$200(Lcom/biznessapps/fragments/single/HomeFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment$1;->this$0:Lcom/biznessapps/fragments/single/HomeFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/single/HomeFragment;->access$300(Lcom/biznessapps/fragments/single/HomeFragment;)V

    goto :goto_0

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment$1;->this$0:Lcom/biznessapps/fragments/single/HomeFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/single/HomeFragment;->access$400(Lcom/biznessapps/fragments/single/HomeFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment$1;->this$0:Lcom/biznessapps/fragments/single/HomeFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/single/HomeFragment;->access$500(Lcom/biznessapps/fragments/single/HomeFragment;)V

    goto :goto_0
.end method

.class Lcom/biznessapps/fragments/infoitems/InfoDetailFragment$2;
.super Ljava/lang/Object;
.source "InfoDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment$2;->this$0:Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment$2;->this$0:Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;

    invoke-virtual {v0}, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/activities/CommonFragmentActivity;->finish()V

    .line 97
    return-void
.end method

.class Lcom/kosbrother/fragments/CategroyHotNovelsFragment$2;
.super Ljava/lang/Object;
.source "CategroyHotNovelsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kosbrother/fragments/CategroyHotNovelsFragment;


# direct methods
.method constructor <init>(Lcom/kosbrother/fragments/CategroyHotNovelsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment$2;->this$0:Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 110
    iget-object v1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment$2;->this$0:Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    invoke-static {v1}, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->access$500(Lcom/kosbrother/fragments/CategroyHotNovelsFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 111
    iget-object v1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment$2;->this$0:Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    invoke-static {v1}, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->access$600(Lcom/kosbrother/fragments/CategroyHotNovelsFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    iget-object v1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment$2;->this$0:Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    invoke-virtual {v1}, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 113
    .local v0, "lm":Landroid/support/v4/app/LoaderManager;
    iget-object v1, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment$2;->this$0:Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    invoke-static {v1}, Lcom/kosbrother/fragments/CategroyHotNovelsFragment;->access$300(Lcom/kosbrother/fragments/CategroyHotNovelsFragment;)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kosbrother/fragments/CategroyHotNovelsFragment$2;->this$0:Lcom/kosbrother/fragments/CategroyHotNovelsFragment;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/content/Loader;->forceLoad()V

    .line 114
    return-void
.end method
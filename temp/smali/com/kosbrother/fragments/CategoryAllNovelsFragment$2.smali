.class Lcom/kosbrother/fragments/CategoryAllNovelsFragment$2;
.super Ljava/lang/Object;
.source "CategoryAllNovelsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kosbrother/fragments/CategoryAllNovelsFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kosbrother/fragments/CategoryAllNovelsFragment;


# direct methods
.method constructor <init>(Lcom/kosbrother/fragments/CategoryAllNovelsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kosbrother/fragments/CategoryAllNovelsFragment;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/kosbrother/fragments/CategoryAllNovelsFragment$2;->this$0:Lcom/kosbrother/fragments/CategoryAllNovelsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v1, p0, Lcom/kosbrother/fragments/CategoryAllNovelsFragment$2;->this$0:Lcom/kosbrother/fragments/CategoryAllNovelsFragment;

    invoke-static {v1}, Lcom/kosbrother/fragments/CategoryAllNovelsFragment;->access$500(Lcom/kosbrother/fragments/CategoryAllNovelsFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    iget-object v1, p0, Lcom/kosbrother/fragments/CategoryAllNovelsFragment$2;->this$0:Lcom/kosbrother/fragments/CategoryAllNovelsFragment;

    invoke-static {v1}, Lcom/kosbrother/fragments/CategoryAllNovelsFragment;->access$600(Lcom/kosbrother/fragments/CategoryAllNovelsFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 110
    iget-object v1, p0, Lcom/kosbrother/fragments/CategoryAllNovelsFragment$2;->this$0:Lcom/kosbrother/fragments/CategoryAllNovelsFragment;

    invoke-virtual {v1}, Lcom/kosbrother/fragments/CategoryAllNovelsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 111
    .local v0, "lm":Landroid/support/v4/app/LoaderManager;
    iget-object v1, p0, Lcom/kosbrother/fragments/CategoryAllNovelsFragment$2;->this$0:Lcom/kosbrother/fragments/CategoryAllNovelsFragment;

    invoke-static {v1}, Lcom/kosbrother/fragments/CategoryAllNovelsFragment;->access$300(Lcom/kosbrother/fragments/CategoryAllNovelsFragment;)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kosbrother/fragments/CategoryAllNovelsFragment$2;->this$0:Lcom/kosbrother/fragments/CategoryAllNovelsFragment;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/content/Loader;->forceLoad()V

    .line 112
    return-void
.end method
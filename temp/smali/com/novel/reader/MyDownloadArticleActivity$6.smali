.class final Lcom/novel/reader/MyDownloadArticleActivity$6;
.super Ljava/lang/Object;
.source "MyDownloadArticleActivity.java"

# interfaces
.implements Landroid/support/v7/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novel/reader/MyDownloadArticleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 294
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 302
    :goto_0
    return v0

    .line 296
    :pswitch_0
    invoke-static {v0}, Lcom/novel/reader/MyDownloadArticleActivity;->access$602(Z)Z

    .line 297
    invoke-static {p1}, Lcom/novel/reader/MyDownloadArticleActivity;->access$502(Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;

    .line 298
    invoke-static {v1}, Lcom/novel/reader/MyDownloadArticleActivity;->access$702(Z)Z

    .line 299
    invoke-static {}, Lcom/novel/reader/MyDownloadArticleActivity;->access$500()Landroid/support/v7/view/ActionMode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/view/ActionMode;->finish()V

    goto :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x7f0e016b
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 277
    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 279
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0f0003

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 280
    invoke-static {p1}, Lcom/novel/reader/MyDownloadArticleActivity;->access$502(Landroid/support/v7/view/ActionMode;)Landroid/support/v7/view/ActionMode;

    .line 281
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/novel/reader/MyDownloadArticleActivity;->access$602(Z)Z

    .line 282
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;

    .prologue
    .line 310
    return-void
.end method

.method public onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.class Lcom/novel/reader/BookmarkActivity$4;
.super Ljava/lang/Object;
.source "BookmarkActivity.java"

# interfaces
.implements Landroid/support/v7/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novel/reader/BookmarkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/BookmarkActivity;


# direct methods
.method constructor <init>(Lcom/novel/reader/BookmarkActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/BookmarkActivity;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/novel/reader/BookmarkActivity$4;->this$0:Lcom/novel/reader/BookmarkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 223
    invoke-static {}, Lcom/novel/reader/BookmarkActivity;->access$200()Landroid/support/v4/app/FragmentStatePagerAdapter;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/BookmarkActivity$NovelPagerAdapter;

    invoke-virtual {v2, v4}, Lcom/novel/reader/BookmarkActivity$NovelPagerAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/kosbrother/fragments/MyBookmarkFragment;

    .line 224
    .local v0, "fragment1":Lcom/kosbrother/fragments/MyBookmarkFragment;
    invoke-static {}, Lcom/novel/reader/BookmarkActivity;->access$200()Landroid/support/v4/app/FragmentStatePagerAdapter;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/BookmarkActivity$NovelPagerAdapter;

    invoke-virtual {v2, v3}, Lcom/novel/reader/BookmarkActivity$NovelPagerAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/kosbrother/fragments/MyBookmarkFragment;

    .line 226
    .local v1, "fragment2":Lcom/kosbrother/fragments/MyBookmarkFragment;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 227
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 234
    invoke-virtual {v0}, Lcom/kosbrother/fragments/MyBookmarkFragment;->resetIsShowDeleteCallbackAction()V

    .line 235
    invoke-virtual {v1}, Lcom/kosbrother/fragments/MyBookmarkFragment;->resetIsShowDeleteCallbackAction()V

    move v2, v4

    .line 239
    :goto_0
    return v2

    .line 229
    :pswitch_0
    invoke-virtual {v0}, Lcom/kosbrother/fragments/MyBookmarkFragment;->deleteAndReload()V

    .line 230
    invoke-virtual {v1}, Lcom/kosbrother/fragments/MyBookmarkFragment;->deleteAndReload()V

    .line 231
    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->finish()V

    move v2, v3

    .line 232
    goto :goto_0

    :cond_0
    move v2, v4

    .line 239
    goto :goto_0

    .line 227
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
    .line 207
    invoke-virtual {p1}, Landroid/support/v7/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 209
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0f0003

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 211
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
    .locals 4
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;

    .prologue
    .line 244
    invoke-static {}, Lcom/novel/reader/BookmarkActivity;->access$200()Landroid/support/v4/app/FragmentStatePagerAdapter;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/BookmarkActivity$NovelPagerAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/novel/reader/BookmarkActivity$NovelPagerAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/kosbrother/fragments/MyBookmarkFragment;

    .line 245
    .local v0, "fragment1":Lcom/kosbrother/fragments/MyBookmarkFragment;
    invoke-static {}, Lcom/novel/reader/BookmarkActivity;->access$200()Landroid/support/v4/app/FragmentStatePagerAdapter;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/BookmarkActivity$NovelPagerAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/novel/reader/BookmarkActivity$NovelPagerAdapter;->getRegisteredFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/kosbrother/fragments/MyBookmarkFragment;

    .line 246
    .local v1, "fragment2":Lcom/kosbrother/fragments/MyBookmarkFragment;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {v0}, Lcom/kosbrother/fragments/MyBookmarkFragment;->resetIsShowDeleteCallbackAction()V

    .line 248
    invoke-virtual {v1}, Lcom/kosbrother/fragments/MyBookmarkFragment;->resetIsShowDeleteCallbackAction()V

    .line 251
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

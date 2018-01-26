.class public Lcom/biznessapps/fragments/notepad/NotepadListFragment;
.super Lcom/biznessapps/fragments/CommonListFragment;
.source "NotepadListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/fragments/notepad/NotepadItem;",
        ">;"
    }
.end annotation


# instance fields
.field private addNoteButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fragments/notepad/NotepadListFragment;Lcom/biznessapps/fragments/notepad/NotepadItem;I)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/notepad/NotepadListFragment;
    .param p1, "x1"    # Lcom/biznessapps/fragments/notepad/NotepadItem;
    .param p2, "x2"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/fragments/notepad/NotepadListFragment;->openNotepad(Lcom/biznessapps/fragments/notepad/NotepadItem;I)V

    return-void
.end method

.method private openNotepad(Lcom/biznessapps/fragments/notepad/NotepadItem;I)V
    .locals 4
    .param p1, "item"    # Lcom/biznessapps/fragments/notepad/NotepadItem;
    .param p2, "position"    # I

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/notepad/NotepadListFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/activities/SingleFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAB_UNIQUE_ID"

    invoke-virtual {p0}, Lcom/biznessapps/fragments/notepad/NotepadListFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 85
    const-string v1, "TAB_LABEL"

    invoke-virtual {p0}, Lcom/biznessapps/fragments/notepad/NotepadListFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_LABEL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "NOTEPAD_EDIT_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    if-eqz p1, :cond_0

    .line 88
    const-string v1, "EDIT_NOTE_EXTRA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 89
    const-string v1, "LIST_POSITION_EXTRA"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    :cond_0
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/biznessapps/fragments/notepad/NotepadListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 92
    return-void
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 3
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadListFragment;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Lcom/biznessapps/fragments/notepad/NotepadListAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/notepad/NotepadListFragment;->items:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/fragments/notepad/NotepadListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadListFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    .line 71
    iget-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    iget-object v1, p0, Lcom/biznessapps/fragments/notepad/NotepadListFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    invoke-virtual {p0}, Lcom/biznessapps/fragments/notepad/NotepadListFragment;->initListViewListener()V

    .line 74
    :cond_0
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 58
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageKeeper;->getNotes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/notepad/NotepadListFragment;->items:Ljava/util/List;

    .line 59
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    const-string v1, "NOTEPAD_NOTE_LIST"

    iget-object v2, p0, Lcom/biznessapps/fragments/notepad/NotepadListFragment;->items:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/biznessapps/layout/R$layout;->notepad_list_view:I

    return v0
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 36
    sget v1, Lcom/biznessapps/layout/R$id;->list_view_root:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 37
    .local v0, "listViewRoot":Landroid/view/ViewGroup;
    sget v1, Lcom/biznessapps/layout/R$id;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/widgets/RefreshableListView;

    iput-object v1, p0, Lcom/biznessapps/fragments/notepad/NotepadListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    .line 38
    iget-object v1, p0, Lcom/biznessapps/fragments/notepad/NotepadListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/RefreshableListView;->setItemsCanFocus(Z)V

    .line 39
    sget v1, Lcom/biznessapps/layout/R$id;->add_note:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/biznessapps/fragments/notepad/NotepadListFragment;->addNoteButton:Landroid/widget/ImageButton;

    .line 40
    iget-object v1, p0, Lcom/biznessapps/fragments/notepad/NotepadListFragment;->addNoteButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/biznessapps/fragments/notepad/NotepadListFragment$1;

    invoke-direct {v2, p0}, Lcom/biznessapps/fragments/notepad/NotepadListFragment$1;-><init>(Lcom/biznessapps/fragments/notepad/NotepadListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/biznessapps/fragments/notepad/NotepadListFragment;->loadData()V

    .line 32
    return-void
.end method

.method protected onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/fragments/notepad/NotepadItem;

    .line 79
    .local v0, "item":Lcom/biznessapps/fragments/notepad/NotepadItem;
    invoke-direct {p0, v0, p3}, Lcom/biznessapps/fragments/notepad/NotepadListFragment;->openNotepad(Lcom/biznessapps/fragments/notepad/NotepadItem;I)V

    .line 80
    return-void
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/notepad/NotepadListFragment;->plugListView(Landroid/app/Activity;)V

    .line 54
    return-void
.end method

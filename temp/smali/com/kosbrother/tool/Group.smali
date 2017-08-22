.class public Lcom/kosbrother/tool/Group;
.super Ljava/lang/Object;
.source "Group.java"


# instance fields
.field private final children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kosbrother/tool/ChildArticle;",
            ">;"
        }
    .end annotation
.end field

.field private isChecked:Z

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/kosbrother/tool/Group;->title:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kosbrother/tool/Group;->children:Ljava/util/ArrayList;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kosbrother/tool/Group;->isChecked:Z

    .line 16
    return-void
.end method


# virtual methods
.method public addChildrenItem(Lcom/kosbrother/tool/ChildArticle;)V
    .locals 1
    .param p1, "child"    # Lcom/kosbrother/tool/ChildArticle;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kosbrother/tool/Group;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public clearChilds()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kosbrother/tool/Group;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 52
    return-void
.end method

.method public getChecked()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/kosbrother/tool/Group;->isChecked:Z

    return v0
.end method

.method public getChildItem(I)Lcom/kosbrother/tool/ChildArticle;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kosbrother/tool/Group;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kosbrother/tool/ChildArticle;

    return-object v0
.end method

.method public getChildrenCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kosbrother/tool/Group;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupCheckedCount()I
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "checkCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/kosbrother/tool/Group;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 64
    iget-object v2, p0, Lcom/kosbrother/tool/Group;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kosbrother/tool/ChildArticle;

    invoke-virtual {v2}, Lcom/kosbrother/tool/ChildArticle;->getChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kosbrother/tool/Group;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kosbrother/tool/ChildArticle;

    invoke-virtual {v2}, Lcom/kosbrother/tool/ChildArticle;->isDownload()Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 63
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_1
    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kosbrother/tool/Group;->title:Ljava/lang/String;

    return-object v0
.end method

.method public removeChild(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kosbrother/tool/Group;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "isChecked"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/kosbrother/tool/Group;->isChecked:Z

    .line 20
    return-void
.end method

.method public setChilds(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kosbrother/tool/ChildArticle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "childs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kosbrother/tool/ChildArticle;>;"
    iget-object v1, p0, Lcom/kosbrother/tool/Group;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/kosbrother/tool/Group;->children:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/kosbrother/tool/Group;->isChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/kosbrother/tool/Group;->isChecked:Z

    .line 24
    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

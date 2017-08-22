.class public Lcom/kosbrother/tool/ChildArticle;
.super Lcom/novel/reader/entity/Article;
.source "ChildArticle.java"


# instance fields
.field private isChecked:Z


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "novelId"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "isDownloaded"    # Z
    .param p7, "num"    # I

    .prologue
    .line 14
    invoke-direct/range {p0 .. p7}, Lcom/novel/reader/entity/Article;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kosbrother/tool/ChildArticle;->isChecked:Z

    .line 16
    return-void
.end method


# virtual methods
.method public getChecked()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/kosbrother/tool/ChildArticle;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "isChecked"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/kosbrother/tool/ChildArticle;->isChecked:Z

    .line 24
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/kosbrother/tool/ChildArticle;->isChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/kosbrother/tool/ChildArticle;->isChecked:Z

    .line 20
    return-void

    .line 19
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

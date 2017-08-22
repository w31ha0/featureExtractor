.class public Lcom/novel/reader/entity/Article;
.super Ljava/lang/Object;
.source "Article.java"


# instance fields
.field public id:I

.field protected isDownloaded:Z

.field protected novelId:I

.field protected num:I

.field protected subject:Ljava/lang/String;

.field protected text:Ljava/lang/String;

.field protected title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 13
    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    move v2, v1

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/novel/reader/entity/Article;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 14
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "novelId"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "isDownloaded"    # Z
    .param p7, "num"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/novel/reader/entity/Article;->id:I

    .line 27
    iput p2, p0, Lcom/novel/reader/entity/Article;->novelId:I

    .line 28
    iput-object p4, p0, Lcom/novel/reader/entity/Article;->title:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/novel/reader/entity/Article;->text:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/novel/reader/entity/Article;->subject:Ljava/lang/String;

    .line 31
    iput-boolean p6, p0, Lcom/novel/reader/entity/Article;->isDownloaded:Z

    .line 32
    iput p7, p0, Lcom/novel/reader/entity/Article;->num:I

    .line 33
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/novel/reader/entity/Article;->id:I

    return v0
.end method

.method public getNovelId()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/novel/reader/entity/Article;->novelId:I

    return v0
.end method

.method public getNum()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/novel/reader/entity/Article;->num:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/novel/reader/entity/Article;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/novel/reader/entity/Article;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/novel/reader/entity/Article;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isDownload()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/novel/reader/entity/Article;->isDownloaded:Z

    return v0
.end method

.method public setIsDownloaded(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/novel/reader/entity/Article;->isDownloaded:Z

    .line 45
    return-void
.end method

.method public setNovelId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/novel/reader/entity/Article;->novelId:I

    .line 77
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/novel/reader/entity/Article;->text:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/novel/reader/entity/Article;->title:Ljava/lang/String;

    .line 49
    return-void
.end method

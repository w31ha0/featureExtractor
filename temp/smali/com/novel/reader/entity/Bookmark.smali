.class public Lcom/novel/reader/entity/Bookmark;
.super Ljava/lang/Object;
.source "Bookmark.java"


# instance fields
.field articleId:I

.field articleTitle:Ljava/lang/String;

.field id:I

.field is_recent_read:Z

.field novelId:I

.field novelName:Ljava/lang/String;

.field novelPic:Ljava/lang/String;

.field rate:I


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    .line 14
    const/16 v4, 0x17

    const-string v5, "test"

    const-string v6, "test2"

    const-string v7, "test"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v0, p0

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v8}, Lcom/novel/reader/entity/Bookmark;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 15
    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "novelId"    # I
    .param p3, "articleId"    # I
    .param p4, "rate"    # I
    .param p5, "novelName"    # Ljava/lang/String;
    .param p6, "articleTitle"    # Ljava/lang/String;
    .param p7, "novelPic"    # Ljava/lang/String;
    .param p8, "is_recent_read"    # Ljava/lang/Boolean;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/novel/reader/entity/Bookmark;->id:I

    .line 19
    iput p2, p0, Lcom/novel/reader/entity/Bookmark;->novelId:I

    .line 20
    iput p3, p0, Lcom/novel/reader/entity/Bookmark;->articleId:I

    .line 21
    iput p4, p0, Lcom/novel/reader/entity/Bookmark;->rate:I

    .line 22
    iput-object p5, p0, Lcom/novel/reader/entity/Bookmark;->novelName:Ljava/lang/String;

    .line 23
    iput-object p6, p0, Lcom/novel/reader/entity/Bookmark;->articleTitle:Ljava/lang/String;

    .line 24
    iput-object p7, p0, Lcom/novel/reader/entity/Bookmark;->novelPic:Ljava/lang/String;

    .line 25
    invoke-virtual {p8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/novel/reader/entity/Bookmark;->is_recent_read:Z

    .line 26
    return-void
.end method


# virtual methods
.method public getArticleId()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/novel/reader/entity/Bookmark;->articleId:I

    return v0
.end method

.method public getArticleTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/novel/reader/entity/Bookmark;->articleTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/novel/reader/entity/Bookmark;->id:I

    return v0
.end method

.method public getNovelId()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/novel/reader/entity/Bookmark;->novelId:I

    return v0
.end method

.method public getNovelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/novel/reader/entity/Bookmark;->novelName:Ljava/lang/String;

    return-object v0
.end method

.method public getNovelPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/novel/reader/entity/Bookmark;->novelPic:Ljava/lang/String;

    return-object v0
.end method

.method public getReadRate()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/novel/reader/entity/Bookmark;->rate:I

    return v0
.end method

.method public isRecentRead()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/novel/reader/entity/Bookmark;->is_recent_read:Z

    return v0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/novel/reader/entity/Bookmark;->id:I

    .line 46
    return-void
.end method

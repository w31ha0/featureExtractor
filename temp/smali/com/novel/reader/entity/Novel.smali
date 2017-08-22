.class public Lcom/novel/reader/entity/Novel;
.super Ljava/lang/Object;
.source "Novel.java"


# instance fields
.field articleNum:Ljava/lang/String;

.field author:Ljava/lang/String;

.field categoryId:I

.field description:Ljava/lang/String;

.field id:I

.field isCollected:Z

.field isDownloaded:Z

.field isSerializing:Z

.field lastUpdate:Ljava/lang/String;

.field lastViewDate:Ljava/util/Date;

.field name:Ljava/lang/String;

.field pic:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v1, 0x1

    .line 20
    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v7, ""

    const-string v8, ""

    move-object v0, p0

    move v6, v1

    move v9, v1

    move v11, v10

    invoke-direct/range {v0 .. v11}, Lcom/novel/reader/entity/Novel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 21
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "author"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "pic"    # Ljava/lang/String;
    .param p6, "categoryId"    # I
    .param p7, "articleNum"    # Ljava/lang/String;
    .param p8, "lastUpdate"    # Ljava/lang/String;
    .param p9, "isSerializing"    # Z
    .param p10, "isCollected"    # Z
    .param p11, "isDownloaded"    # Z

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/novel/reader/entity/Novel;->id:I

    .line 26
    iput-object p2, p0, Lcom/novel/reader/entity/Novel;->name:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/novel/reader/entity/Novel;->author:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/novel/reader/entity/Novel;->description:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/novel/reader/entity/Novel;->pic:Ljava/lang/String;

    .line 30
    iput p6, p0, Lcom/novel/reader/entity/Novel;->categoryId:I

    .line 31
    iput-object p7, p0, Lcom/novel/reader/entity/Novel;->articleNum:Ljava/lang/String;

    .line 32
    iput-object p8, p0, Lcom/novel/reader/entity/Novel;->lastUpdate:Ljava/lang/String;

    .line 33
    iput-boolean p9, p0, Lcom/novel/reader/entity/Novel;->isSerializing:Z

    .line 34
    iput-boolean p10, p0, Lcom/novel/reader/entity/Novel;->isCollected:Z

    .line 35
    iput-boolean p11, p0, Lcom/novel/reader/entity/Novel;->isDownloaded:Z

    .line 36
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZLjava/util/Date;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "author"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "pic"    # Ljava/lang/String;
    .param p6, "categoryId"    # I
    .param p7, "articleNum"    # Ljava/lang/String;
    .param p8, "lastUpdate"    # Ljava/lang/String;
    .param p9, "isSerializing"    # Z
    .param p10, "isCollected"    # Z
    .param p11, "isDownloaded"    # Z
    .param p12, "lastViewDate"    # Ljava/util/Date;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/novel/reader/entity/Novel;->id:I

    .line 41
    iput-object p2, p0, Lcom/novel/reader/entity/Novel;->name:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/novel/reader/entity/Novel;->author:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/novel/reader/entity/Novel;->description:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lcom/novel/reader/entity/Novel;->pic:Ljava/lang/String;

    .line 45
    iput p6, p0, Lcom/novel/reader/entity/Novel;->categoryId:I

    .line 46
    iput-object p7, p0, Lcom/novel/reader/entity/Novel;->articleNum:Ljava/lang/String;

    .line 47
    iput-object p8, p0, Lcom/novel/reader/entity/Novel;->lastUpdate:Ljava/lang/String;

    .line 48
    iput-boolean p9, p0, Lcom/novel/reader/entity/Novel;->isSerializing:Z

    .line 49
    iput-boolean p10, p0, Lcom/novel/reader/entity/Novel;->isCollected:Z

    .line 50
    iput-boolean p11, p0, Lcom/novel/reader/entity/Novel;->isDownloaded:Z

    .line 51
    iput-object p12, p0, Lcom/novel/reader/entity/Novel;->lastViewDate:Ljava/util/Date;

    .line 52
    return-void
.end method


# virtual methods
.method public getArticleNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/novel/reader/entity/Novel;->articleNum:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/novel/reader/entity/Novel;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/novel/reader/entity/Novel;->categoryId:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/novel/reader/entity/Novel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/novel/reader/entity/Novel;->id:I

    return v0
.end method

.method public getLastUpdate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/novel/reader/entity/Novel;->lastUpdate:Ljava/lang/String;

    return-object v0
.end method

.method public getLastViewDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/novel/reader/entity/Novel;->lastViewDate:Ljava/util/Date;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/novel/reader/entity/Novel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/novel/reader/entity/Novel;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public isCollected()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/novel/reader/entity/Novel;->isCollected:Z

    return v0
.end method

.method public isDownloaded()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/novel/reader/entity/Novel;->isDownloaded:Z

    return v0
.end method

.method public isSerializing()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/novel/reader/entity/Novel;->isSerializing:Z

    return v0
.end method

.method public setIsCollected(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/novel/reader/entity/Novel;->isCollected:Z

    .line 64
    return-void
.end method

.method public setIsDownload(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/novel/reader/entity/Novel;->isDownloaded:Z

    .line 68
    return-void
.end method

.method public setLastViewDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/novel/reader/entity/Novel;->lastViewDate:Ljava/util/Date;

    .line 60
    return-void
.end method

.class public Lcom/netflix/mediaclient/util/data/FileSystemEntryImpl;
.super Ljava/lang/Object;
.source "FileSystemEntryImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/data/DataRepository$Entry;


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mSizeInBytes:J

.field private mTs:J


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/util/data/FileSystemEntryImpl;->mFileName:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/util/data/FileSystemEntryImpl;->mTs:J

    .line 53
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/util/data/FileSystemEntryImpl;->mSizeInBytes:J

    .line 54
    return-void
.end method

.method constructor <init>(Ljava/lang/String;JJ)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Lcom/netflix/mediaclient/util/data/FileSystemEntryImpl;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/util/data/FileSystemEntryImpl;->mFileName:Ljava/lang/String;

    .line 41
    iput-wide p2, p0, Lcom/netflix/mediaclient/util/data/FileSystemEntryImpl;->mTs:J

    .line 42
    iput-wide p4, p0, Lcom/netflix/mediaclient/util/data/FileSystemEntryImpl;->mSizeInBytes:J

    .line 43
    return-void
.end method

.method static getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 78
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/util/data/FileSystemEntryImpl;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getSizeInBytes()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/netflix/mediaclient/util/data/FileSystemEntryImpl;->mSizeInBytes:J

    return-wide v0
.end method

.method public getTs()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/netflix/mediaclient/util/data/FileSystemEntryImpl;->mTs:J

    return-wide v0
.end method

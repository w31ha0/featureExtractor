.class final Lcom/netflix/mediaclient/ui/common/ExportDebugData$2;
.super Ljava/lang/Object;
.source "ExportDebugData.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic val$files:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/ExportDebugData$2;->val$files:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 357
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 358
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x500000

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/ExportDebugData$2;->val$files:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

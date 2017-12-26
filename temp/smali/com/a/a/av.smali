.class Lcom/a/a/av;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/io/File;

.field private c:Lb/a/a/a/a/b/ad;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/a/a/av;->a:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/a/a/av;->b:Ljava/io/File;

    .line 31
    return-void
.end method

.method static a(Lb/a/a/a/a/b/ad;)Lcom/a/a/b;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 150
    if-nez p0, :cond_0

    .line 151
    const/4 v0, 0x0

    .line 178
    :goto_0
    return-object v0

    .line 157
    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [I

    aput v6, v1, v6

    .line 159
    invoke-virtual {p0}, Lb/a/a/a/a/b/ad;->a()I

    move-result v0

    new-array v2, v0, [B

    .line 162
    :try_start_0
    new-instance v0, Lcom/a/a/aw;

    invoke-direct {v0, v2, v1}, Lcom/a/a/aw;-><init>([B[I)V

    invoke-virtual {p0, v0}, Lb/a/a/a/a/b/ad;->a(Lb/a/a/a/a/b/ah;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_1
    aget v0, v1, v6

    invoke-static {v2, v6, v0}, Lcom/a/a/b;->a([BII)Lcom/a/a/b;

    move-result-object v0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v3

    const-string v4, "Fabric"

    const-string v5, "A problem occurred while reading the Crashlytics log file."

    invoke-interface {v3, v4, v5, v0}, Lb/a/a/a/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method a()Lb/a/a/a/a/b/ad;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/a/a/av;->c:Lb/a/a/a/a/b/ad;

    return-object v0
.end method

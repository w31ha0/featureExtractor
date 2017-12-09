.class final Lcom/wooboo/adlib_android/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wooboo/adlib_android/c$a;
    }
.end annotation


# static fields
.field private static a:I


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:B

.field private g:Lcom/wooboo/adlib_android/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x1388

    sput v0, Lcom/wooboo/adlib_android/c;->a:I

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/wooboo/adlib_android/c;->c:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/wooboo/adlib_android/c;->d:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/wooboo/adlib_android/c;->e:Ljava/lang/String;

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/wooboo/adlib_android/c;)B
    .locals 1

    .prologue
    .line 30
    iget-byte v0, p0, Lcom/wooboo/adlib_android/c;->f:B

    return v0
.end method

.method public static a(Landroid/content/Context;[B)Lcom/wooboo/adlib_android/c;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/wooboo/adlib_android/c;

    invoke-direct {v0}, Lcom/wooboo/adlib_android/c;-><init>()V

    .line 43
    iput-object p0, v0, Lcom/wooboo/adlib_android/c;->b:Landroid/content/Context;

    .line 44
    invoke-static {p1}, Lcom/wooboo/adlib_android/h;->a([B)Ljava/util/ArrayList;

    move-result-object v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/wooboo/adlib_android/c;->c:Ljava/lang/String;

    .line 47
    iget-object v2, v0, Lcom/wooboo/adlib_android/c;->c:Ljava/lang/String;

    iput-object v2, v0, Lcom/wooboo/adlib_android/c;->c:Ljava/lang/String;

    .line 48
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/wooboo/adlib_android/c;->e:Ljava/lang/String;

    .line 49
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/wooboo/adlib_android/c;->d:Ljava/lang/String;

    .line 50
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    iput-byte v1, v0, Lcom/wooboo/adlib_android/c;->f:B

    .line 51
    iget-object v1, v0, Lcom/wooboo/adlib_android/c;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/wooboo/adlib_android/c;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    move-object v0, v3

    .line 58
    :goto_0
    return-object v0

    .line 54
    :cond_0
    const-string v1, "Wooboo SDK"

    const-string v2, "Get an ad from Wooboo servers."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 56
    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v3, "|"

    .line 271
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "|"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    return-object v0
.end method

.method static synthetic b(Lcom/wooboo/adlib_android/c;)Lcom/wooboo/adlib_android/c$a;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/wooboo/adlib_android/c;->g:Lcom/wooboo/adlib_android/c$a;

    return-object v0
.end method

.method static synthetic c(Lcom/wooboo/adlib_android/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wooboo/adlib_android/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/wooboo/adlib_android/c;->a:I

    return v0
.end method

.method static synthetic d(Lcom/wooboo/adlib_android/c;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/wooboo/adlib_android/c;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/wooboo/adlib_android/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lcom/wooboo/adlib_android/c$1;

    invoke-direct {v0, p0}, Lcom/wooboo/adlib_android/c$1;-><init>(Lcom/wooboo/adlib_android/c;)V

    .line 266
    invoke-virtual {v0}, Lcom/wooboo/adlib_android/c$1;->start()V

    .line 267
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->close()V

    .line 269
    :cond_0
    return-void
.end method

.method public final a(Lcom/wooboo/adlib_android/c$a;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/wooboo/adlib_android/c;->g:Lcom/wooboo/adlib_android/c$a;

    .line 288
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/wooboo/adlib_android/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/wooboo/adlib_android/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 306
    instance-of v0, p1, Lcom/wooboo/adlib_android/c;

    if-eqz v0, :cond_0

    .line 307
    check-cast p1, Lcom/wooboo/adlib_android/c;

    .line 308
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wooboo/adlib_android/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 310
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/wooboo/adlib_android/c;->c:Ljava/lang/String;

    .line 301
    return-object v0
.end method

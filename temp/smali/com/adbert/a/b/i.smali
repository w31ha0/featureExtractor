.class public final enum Lcom/adbert/a/b/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adbert/a/b/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/adbert/a/b/i;

.field public static final enum b:Lcom/adbert/a/b/i;

.field public static final enum c:Lcom/adbert/a/b/i;

.field public static final enum d:Lcom/adbert/a/b/i;

.field public static final enum e:Lcom/adbert/a/b/i;

.field public static final enum f:Lcom/adbert/a/b/i;

.field private static final synthetic h:[Lcom/adbert/a/b/i;


# instance fields
.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/adbert/a/b/i;

    const-string v1, "init"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/adbert/a/b/i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adbert/a/b/i;->a:Lcom/adbert/a/b/i;

    new-instance v0, Lcom/adbert/a/b/i;

    const-string v1, "download"

    invoke-direct {v0, v1, v4, v3}, Lcom/adbert/a/b/i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adbert/a/b/i;->b:Lcom/adbert/a/b/i;

    new-instance v0, Lcom/adbert/a/b/i;

    const-string v1, "url"

    invoke-direct {v0, v1, v5, v4}, Lcom/adbert/a/b/i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adbert/a/b/i;->c:Lcom/adbert/a/b/i;

    new-instance v0, Lcom/adbert/a/b/i;

    const-string v1, "phone"

    invoke-direct {v0, v1, v6, v5}, Lcom/adbert/a/b/i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adbert/a/b/i;->d:Lcom/adbert/a/b/i;

    new-instance v0, Lcom/adbert/a/b/i;

    const-string v1, "fb"

    invoke-direct {v0, v1, v7, v6}, Lcom/adbert/a/b/i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adbert/a/b/i;->e:Lcom/adbert/a/b/i;

    new-instance v0, Lcom/adbert/a/b/i;

    const-string v1, "line"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v7}, Lcom/adbert/a/b/i;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adbert/a/b/i;->f:Lcom/adbert/a/b/i;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/adbert/a/b/i;

    sget-object v1, Lcom/adbert/a/b/i;->a:Lcom/adbert/a/b/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adbert/a/b/i;->b:Lcom/adbert/a/b/i;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adbert/a/b/i;->c:Lcom/adbert/a/b/i;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adbert/a/b/i;->d:Lcom/adbert/a/b/i;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adbert/a/b/i;->e:Lcom/adbert/a/b/i;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/adbert/a/b/i;->f:Lcom/adbert/a/b/i;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adbert/a/b/i;->h:[Lcom/adbert/a/b/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput p3, p0, Lcom/adbert/a/b/i;->g:I

    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adbert/a/b/i;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/adbert/a/b/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adbert/a/b/i;

    return-object v0
.end method

.method public static values()[Lcom/adbert/a/b/i;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/adbert/a/b/i;->h:[Lcom/adbert/a/b/i;

    invoke-virtual {v0}, [Lcom/adbert/a/b/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adbert/a/b/i;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/adbert/a/b/i;->g:I

    return v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 17
    invoke-static {}, Lcom/adbert/a/b/i;->values()[Lcom/adbert/a/b/i;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 18
    invoke-virtual {v3}, Lcom/adbert/a/b/i;->a()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 19
    invoke-virtual {v3}, Lcom/adbert/a/b/i;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    :goto_1
    return-object v0

    .line 17
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(I)Lcom/adbert/a/b/i;
    .locals 5

    .prologue
    .line 26
    invoke-static {}, Lcom/adbert/a/b/i;->values()[Lcom/adbert/a/b/i;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 27
    invoke-virtual {v0}, Lcom/adbert/a/b/i;->a()I

    move-result v4

    if-ne v4, p1, :cond_1

    move-object p0, v0

    .line 31
    :cond_0
    return-object p0

    .line 26
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

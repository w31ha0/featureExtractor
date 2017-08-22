.class public final enum Lcom/adbert/a/b/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adbert/a/b/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/adbert/a/b/e;

.field public static final enum b:Lcom/adbert/a/b/e;

.field public static final enum c:Lcom/adbert/a/b/e;

.field public static final enum d:Lcom/adbert/a/b/e;

.field private static final synthetic f:[Lcom/adbert/a/b/e;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/adbert/a/b/e;

    const-string v1, "cpmBg"

    const-string v2, "#CC000000"

    invoke-direct {v0, v1, v3, v2}, Lcom/adbert/a/b/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adbert/a/b/e;->a:Lcom/adbert/a/b/e;

    new-instance v0, Lcom/adbert/a/b/e;

    const-string v1, "cpmBgLight"

    const-string v2, "#30000000"

    invoke-direct {v0, v1, v4, v2}, Lcom/adbert/a/b/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adbert/a/b/e;->b:Lcom/adbert/a/b/e;

    new-instance v0, Lcom/adbert/a/b/e;

    const-string v1, "endingCardBg"

    const-string v2, "#50000000"

    invoke-direct {v0, v1, v5, v2}, Lcom/adbert/a/b/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adbert/a/b/e;->c:Lcom/adbert/a/b/e;

    new-instance v0, Lcom/adbert/a/b/e;

    const-string v1, "videoBg"

    const-string v2, "#50000000"

    invoke-direct {v0, v1, v6, v2}, Lcom/adbert/a/b/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adbert/a/b/e;->d:Lcom/adbert/a/b/e;

    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/adbert/a/b/e;

    sget-object v1, Lcom/adbert/a/b/e;->a:Lcom/adbert/a/b/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adbert/a/b/e;->b:Lcom/adbert/a/b/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adbert/a/b/e;->c:Lcom/adbert/a/b/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adbert/a/b/e;->d:Lcom/adbert/a/b/e;

    aput-object v1, v0, v6

    sput-object v0, Lcom/adbert/a/b/e;->f:[Lcom/adbert/a/b/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/adbert/a/b/e;->e:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adbert/a/b/e;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/adbert/a/b/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adbert/a/b/e;

    return-object v0
.end method

.method public static values()[Lcom/adbert/a/b/e;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/adbert/a/b/e;->f:[Lcom/adbert/a/b/e;

    invoke-virtual {v0}, [Lcom/adbert/a/b/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adbert/a/b/e;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/adbert/a/b/e;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

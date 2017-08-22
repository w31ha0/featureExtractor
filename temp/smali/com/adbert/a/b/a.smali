.class public final enum Lcom/adbert/a/b/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adbert/a/b/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/adbert/a/b/a;

.field public static final enum b:Lcom/adbert/a/b/a;

.field public static final enum c:Lcom/adbert/a/b/a;

.field public static final enum d:Lcom/adbert/a/b/a;

.field public static final enum e:Lcom/adbert/a/b/a;

.field public static final enum f:Lcom/adbert/a/b/a;

.field public static final enum g:Lcom/adbert/a/b/a;

.field public static final enum h:Lcom/adbert/a/b/a;

.field public static final enum i:Lcom/adbert/a/b/a;

.field private static final synthetic k:[Lcom/adbert/a/b/a;


# instance fields
.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4
    new-instance v0, Lcom/adbert/a/b/a;

    const-string v1, "RUN_VIDEO"

    invoke-direct {v0, v1, v4, v4}, Lcom/adbert/a/b/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adbert/a/b/a;->a:Lcom/adbert/a/b/a;

    new-instance v0, Lcom/adbert/a/b/a;

    const-string v1, "RUN_SETDATA"

    invoke-direct {v0, v1, v5, v6}, Lcom/adbert/a/b/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adbert/a/b/a;->b:Lcom/adbert/a/b/a;

    new-instance v0, Lcom/adbert/a/b/a;

    const-string v1, "RUN_START"

    invoke-direct {v0, v1, v6, v7}, Lcom/adbert/a/b/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adbert/a/b/a;->c:Lcom/adbert/a/b/a;

    new-instance v0, Lcom/adbert/a/b/a;

    const-string v1, "RUN_BANNER"

    invoke-direct {v0, v1, v7, v8}, Lcom/adbert/a/b/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adbert/a/b/a;->d:Lcom/adbert/a/b/a;

    new-instance v0, Lcom/adbert/a/b/a;

    const-string v1, "RUN_ERROR"

    const/4 v2, 0x4

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/adbert/a/b/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adbert/a/b/a;->e:Lcom/adbert/a/b/a;

    new-instance v0, Lcom/adbert/a/b/a;

    const-string v1, "RUN_OK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v8, v2}, Lcom/adbert/a/b/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adbert/a/b/a;->f:Lcom/adbert/a/b/a;

    .line 5
    new-instance v0, Lcom/adbert/a/b/a;

    const-string v1, "RUN_FAIL"

    const/4 v2, 0x6

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/adbert/a/b/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adbert/a/b/a;->g:Lcom/adbert/a/b/a;

    new-instance v0, Lcom/adbert/a/b/a;

    const-string v1, "act_web"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Lcom/adbert/a/b/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adbert/a/b/a;->h:Lcom/adbert/a/b/a;

    new-instance v0, Lcom/adbert/a/b/a;

    const-string v1, "act_video2"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v5}, Lcom/adbert/a/b/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adbert/a/b/a;->i:Lcom/adbert/a/b/a;

    .line 3
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/adbert/a/b/a;

    sget-object v1, Lcom/adbert/a/b/a;->a:Lcom/adbert/a/b/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adbert/a/b/a;->b:Lcom/adbert/a/b/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adbert/a/b/a;->c:Lcom/adbert/a/b/a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adbert/a/b/a;->d:Lcom/adbert/a/b/a;

    aput-object v1, v0, v7

    const/4 v1, 0x4

    sget-object v2, Lcom/adbert/a/b/a;->e:Lcom/adbert/a/b/a;

    aput-object v2, v0, v1

    sget-object v1, Lcom/adbert/a/b/a;->f:Lcom/adbert/a/b/a;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/adbert/a/b/a;->g:Lcom/adbert/a/b/a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/adbert/a/b/a;->h:Lcom/adbert/a/b/a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/adbert/a/b/a;->i:Lcom/adbert/a/b/a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adbert/a/b/a;->k:[Lcom/adbert/a/b/a;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput p3, p0, Lcom/adbert/a/b/a;->j:I

    .line 11
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adbert/a/b/a;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/adbert/a/b/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adbert/a/b/a;

    return-object v0
.end method

.method public static values()[Lcom/adbert/a/b/a;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/adbert/a/b/a;->k:[Lcom/adbert/a/b/a;

    invoke-virtual {v0}, [Lcom/adbert/a/b/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adbert/a/b/a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/adbert/a/b/a;->j:I

    return v0
.end method

.class public final enum Lcom/adbert/a/b/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adbert/a/b/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/adbert/a/b/h;

.field public static final enum b:Lcom/adbert/a/b/h;

.field public static final enum c:Lcom/adbert/a/b/h;

.field public static final enum d:Lcom/adbert/a/b/h;

.field public static final enum e:Lcom/adbert/a/b/h;

.field public static final enum f:Lcom/adbert/a/b/h;

.field public static final enum g:Lcom/adbert/a/b/h;

.field private static final synthetic j:[Lcom/adbert/a/b/h;


# instance fields
.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 6
    new-instance v0, Lcom/adbert/a/b/h;

    const-string v1, "LIGHT"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v8, v3}, Lcom/adbert/a/b/h;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/adbert/a/b/h;->a:Lcom/adbert/a/b/h;

    new-instance v0, Lcom/adbert/a/b/h;

    const-string v1, "SHAKE"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/adbert/a/b/h;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/adbert/a/b/h;->b:Lcom/adbert/a/b/h;

    .line 7
    new-instance v0, Lcom/adbert/a/b/h;

    const-string v1, "MAGNETIC_FIELD"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/adbert/a/b/h;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/adbert/a/b/h;->c:Lcom/adbert/a/b/h;

    new-instance v0, Lcom/adbert/a/b/h;

    const-string v1, "DISTANCE"

    const/4 v2, 0x3

    const/16 v3, 0x8

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adbert/a/b/h;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/adbert/a/b/h;->d:Lcom/adbert/a/b/h;

    .line 8
    new-instance v0, Lcom/adbert/a/b/h;

    const-string v1, "GYROSCOPE"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/adbert/a/b/h;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/adbert/a/b/h;->e:Lcom/adbert/a/b/h;

    new-instance v0, Lcom/adbert/a/b/h;

    const-string v1, "PRESSURE"

    invoke-direct {v0, v1, v8, v9, v8}, Lcom/adbert/a/b/h;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/adbert/a/b/h;->f:Lcom/adbert/a/b/h;

    .line 9
    new-instance v0, Lcom/adbert/a/b/h;

    const-string v1, "GRAVITY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v9, v2, v9}, Lcom/adbert/a/b/h;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/adbert/a/b/h;->g:Lcom/adbert/a/b/h;

    .line 5
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/adbert/a/b/h;

    const/4 v1, 0x0

    sget-object v2, Lcom/adbert/a/b/h;->a:Lcom/adbert/a/b/h;

    aput-object v2, v0, v1

    sget-object v1, Lcom/adbert/a/b/h;->b:Lcom/adbert/a/b/h;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adbert/a/b/h;->c:Lcom/adbert/a/b/h;

    aput-object v1, v0, v6

    const/4 v1, 0x3

    sget-object v2, Lcom/adbert/a/b/h;->d:Lcom/adbert/a/b/h;

    aput-object v2, v0, v1

    sget-object v1, Lcom/adbert/a/b/h;->e:Lcom/adbert/a/b/h;

    aput-object v1, v0, v7

    sget-object v1, Lcom/adbert/a/b/h;->f:Lcom/adbert/a/b/h;

    aput-object v1, v0, v8

    sget-object v1, Lcom/adbert/a/b/h;->g:Lcom/adbert/a/b/h;

    aput-object v1, v0, v9

    sput-object v0, Lcom/adbert/a/b/h;->j:[Lcom/adbert/a/b/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/adbert/a/b/h;->h:I

    .line 16
    iput p4, p0, Lcom/adbert/a/b/h;->i:I

    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adbert/a/b/h;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/adbert/a/b/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adbert/a/b/h;

    return-object v0
.end method

.method public static values()[Lcom/adbert/a/b/h;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/adbert/a/b/h;->j:[Lcom/adbert/a/b/h;

    invoke-virtual {v0}, [Lcom/adbert/a/b/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adbert/a/b/h;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/adbert/a/b/h;->h:I

    return v0
.end method

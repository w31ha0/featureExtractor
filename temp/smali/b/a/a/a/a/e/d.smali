.class public final enum Lb/a/a/a/a/e/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lb/a/a/a/a/e/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/a/a/a/a/e/d;

.field public static final enum b:Lb/a/a/a/a/e/d;

.field public static final enum c:Lb/a/a/a/a/e/d;

.field public static final enum d:Lb/a/a/a/a/e/d;

.field private static final synthetic e:[Lb/a/a/a/a/e/d;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lb/a/a/a/a/e/d;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lb/a/a/a/a/e/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/a/a/e/d;->a:Lb/a/a/a/a/e/d;

    .line 5
    new-instance v0, Lb/a/a/a/a/e/d;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lb/a/a/a/a/e/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/a/a/e/d;->b:Lb/a/a/a/a/e/d;

    .line 6
    new-instance v0, Lb/a/a/a/a/e/d;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lb/a/a/a/a/e/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/a/a/e/d;->c:Lb/a/a/a/a/e/d;

    .line 7
    new-instance v0, Lb/a/a/a/a/e/d;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lb/a/a/a/a/e/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/a/a/e/d;->d:Lb/a/a/a/a/e/d;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lb/a/a/a/a/e/d;

    sget-object v1, Lb/a/a/a/a/e/d;->a:Lb/a/a/a/a/e/d;

    aput-object v1, v0, v2

    sget-object v1, Lb/a/a/a/a/e/d;->b:Lb/a/a/a/a/e/d;

    aput-object v1, v0, v3

    sget-object v1, Lb/a/a/a/a/e/d;->c:Lb/a/a/a/a/e/d;

    aput-object v1, v0, v4

    sget-object v1, Lb/a/a/a/a/e/d;->d:Lb/a/a/a/a/e/d;

    aput-object v1, v0, v5

    sput-object v0, Lb/a/a/a/a/e/d;->e:[Lb/a/a/a/a/e/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/a/a/a/e/d;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lb/a/a/a/a/e/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/a/a/a/a/e/d;

    return-object v0
.end method

.method public static values()[Lb/a/a/a/a/e/d;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lb/a/a/a/a/e/d;->e:[Lb/a/a/a/a/e/d;

    invoke-virtual {v0}, [Lb/a/a/a/a/e/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/a/a/a/e/d;

    return-object v0
.end method

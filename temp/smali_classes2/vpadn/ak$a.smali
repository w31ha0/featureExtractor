.class final enum Lvpadn/ak$a;
.super Ljava/lang/Enum;
.source "VponAppDetectionAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvpadn/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lvpadn/ak$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lvpadn/ak$a;

.field public static final enum b:Lvpadn/ak$a;

.field private static final synthetic d:[Lvpadn/ak$a;


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lvpadn/ak$a;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2, v2}, Lvpadn/ak$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lvpadn/ak$a;->a:Lvpadn/ak$a;

    new-instance v0, Lvpadn/ak$a;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3, v3}, Lvpadn/ak$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lvpadn/ak$a;->b:Lvpadn/ak$a;

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Lvpadn/ak$a;

    sget-object v1, Lvpadn/ak$a;->a:Lvpadn/ak$a;

    aput-object v1, v0, v2

    sget-object v1, Lvpadn/ak$a;->b:Lvpadn/ak$a;

    aput-object v1, v0, v3

    sput-object v0, Lvpadn/ak$a;->d:[Lvpadn/ak$a;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lvpadn/ak$a;->c:I

    .line 50
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lvpadn/ak$a;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lvpadn/ak$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lvpadn/ak$a;

    return-object v0
.end method

.method public static values()[Lvpadn/ak$a;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lvpadn/ak$a;->d:[Lvpadn/ak$a;

    invoke-virtual {v0}, [Lvpadn/ak$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvpadn/ak$a;

    return-object v0
.end method
